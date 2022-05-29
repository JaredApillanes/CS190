outlets = 2;

var nCols = 1;
var cellSizePA = 20;
var cellSizePE = 20;

var paX;
var paY;

var peX;
var peY;

function bang()
{
	if (nCols < 2)
	{
		outlet(0, ["columns", 1]);
		outlet(1, ["patching_rect", paX, paY, cellSizePA, cellSizePA]);
		outlet(1, ["presentation_rect", peX, peY, cellSizePE, cellSizePE]);
	}
	else
	{
		outlet(0, ["columns", nCols]);
		outlet(1, ["patching_rect", paX, paY, cellSizePA * nCols, cellSizePA]);
		outlet(1, ["presentation_rect", peX, peY, cellSizePE * nCols, cellSizePE]);
	}
}

function msg_int(cols) {
	nCols = cols;
}

function pa()
{
	var a = arrayfromargs(arguments);
	paX = a[0];
	paY = a[1];
	cellSizePA = a[3];
}

function pe()
{
	var a = arrayfromargs(arguments);
	peX = a[0];
	peY = a[1];
	cellSizePE = a[3];
	bang();
}