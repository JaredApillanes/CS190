import mido
import numpy as np
import struct


def select_track(mid):
    for i, t in enumerate(mid.tracks):
        print(f"{i + 1:<3}- {t.name}")

    while True:
        track_num = input("Select track")
        if track_num.isdigit():
            track_num = int(track_num) - 1
            if 0 <= track_num < len(mid.tracks):
                return track_num
        print("Invalid Track Number")
        print()
        for i, t in enumerate(mid.tracks):
            print(f"{i + 1:<3}- {t.name}")


def parse_jxf(file):
    with open(file, 'rb') as file:
        raw = file.read()
    pointer = 0
    groupID, fileSize, IFFType = struct.unpack('>4si4s', raw[pointer:pointer + 12])
    assert groupID == b'FORM' and IFFType == b'JIT!'
    pointer += 12

    formatChunkID, formatChunkSize, version = struct.unpack('>4s2i', raw[pointer:pointer + 12])
    assert formatChunkID == b'FVER' and formatChunkSize == 12 and version == 0x3C93DC80
    pointer += 12

    matrixChunkID, matrixChunkSize, offset, dataType, planeCount, dimCount = \
        struct.unpack('>4s2i4s2i', raw[pointer:pointer + 24])
    assert dataType == b'FL32'
    pointer += 24
    fmt = f'>{dimCount}i'
    dim_size = struct.calcsize(fmt)
    dim = struct.unpack(fmt, raw[pointer:pointer + dim_size])
    pointer += dim_size

    return np.array(
        struct.unpack(f">{np.array(dim).prod()}f", raw[pointer:])
    ).reshape(dim[::-1])


def write_jxf(file, data):
    fmt = f'>4si4s4s2i4s2i4s2i{len(data.shape)}i{np.prod(data.shape)}b'
    fileSize = struct.calcsize(fmt)
    containerChunk = [b"FORM", fileSize, b"JIT!"]
    formatChunk = [b"FVER", 12, 0x3C93DC80]

    offset = 32
    dataType = b'FL32'
    planeCount = 1
    matrixChunk = [b"MTRX", fileSize - 24, offset, dataType, planeCount, len(data.shape), *data.shape[::-1],
                   *tuple(data.flatten())]
    contents = containerChunk + formatChunk + matrixChunk
    payload = struct.pack(f'>4si4s4s2i4s2i4s2i{len(data.shape)}i{np.prod(data.shape)}f', *contents)
    with open(file, 'wb') as output:
        output.write(payload)


def markov_midi(file_in: str, beat_division=None) -> np.array:
    """

    :param file_in: path to midi file to parse
    :param measures: list of measures to split the file into
    :return: 128x128 un-normalized markov table:
        y-current note, x-next note occurrences
    """
    mid = mido.MidiFile(file_in, clip=True)
    track_num = select_track(mid)
    if not beat_division:
        beat_division = []
    beat_division = [v * mid.ticks_per_beat for v in beat_division] + [mid.length * mid.ticks_per_beat]
    start_index = start_tick = 0
    for end in beat_division:
        start_index, start_tick = _markov_loop(mid, track_num, start_index, start_tick, end, file_in)


def _markov_loop(mid, track_num, start_index, start_tick, end, file_in):
    track = mid.tracks[track_num]
    # stored as
    # y - last pitch
    # x - current pitch
    pitches = np.zeros((128, 128))
    chord_size = np.zeros((128, 7))
    chord_data = np.zeros((128, 128))

    rhythm = np.zeros((128, 5))
    state = np.zeros(128)

    last_pitches = []
    current_pitches = []
    off_first = False
    first_note = None

    while True:
        msg = track[start_index]

        state += msg.time
        start_tick += msg.time
        toBreak = start_tick > end

        if not off_first and msg.time > 0 and last_pitches:
            off_first = True

        if toBreak or msg.type.startswith('n'):
            if toBreak or ((msg.velocity == 0 or msg.type == "note_off") and msg.time != 0):
                division = min(max(round(np.log2(state[msg.note] / mid.ticks_per_beat)) + 2, 0), 4)
                rhythm[msg.note, division] += 1
            else:
                state[msg.note] = 0

            if toBreak or (msg.type == "note_on" and msg.velocity > 0):
                if not off_first:
                    last_pitches.append(msg.note)
                    first_note = msg.note
                else:
                    if (not current_pitches or msg.time == 0) and not toBreak:
                        current_pitches.append(msg.note)
                    else:
                        for last_pitch in last_pitches:
                            for current_pitch in current_pitches:
                                pitches[last_pitch, current_pitch] += 1
                            chord_size[last_pitch, min(len(last_pitches) - 1, 6)] += 1
                            for last_pitch_2 in last_pitches:
                                if last_pitch != last_pitch_2:
                                    chord_data[last_pitch, last_pitch_2] += 1

                        if not toBreak:
                            last_pitches = current_pitches
                            current_pitches = [msg.note]
        start_index += 1
        if start_index >= len(track):
            toBreak = True
        if toBreak:
            pitches[current_pitches[0], first_note] += 1
            break

    name, data = (track.name + f"_{start_tick}", {"pitch": pitches, "chord_notes": chord_data, "chord_size": chord_size,
                                                  "rhythm": rhythm})
    name = ''.join(filter(str.isalnum, name.replace(' ', '_')))
    for suffix, matrix in data.items():
        write_jxf(f"{file_in.replace('.mid', '').replace(' ', '_')}_{name}_{suffix}.jxf", matrix)

    return start_index, start_tick


if __name__ == '__main__':
    # measure_ends = [1, 14]
    # beats_per_measure = 4
    # markov_midi("gerudo.mid", [beats_per_measure * m for m in measure_ends])
    markov_midi(input("Input File:\n"))
