
var Beta = 1;

function bang() {
	outlet(0, -Beta * Math.log(Math.random()));
}

function msg_float(v) {
	Beta = v
}