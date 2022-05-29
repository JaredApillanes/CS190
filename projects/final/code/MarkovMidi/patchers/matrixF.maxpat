{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 87.0, 1007.0, 779.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-3",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 42.295433521270752, 303.0, 368.0, 33.0 ],
					"text" : "matrixF - provides a wrapper for matrixVector; a stable jit.matrixset such that resizing will not erase data"
				}

			}
, 			{
				"box" : 				{
					"comment" : "matrix",
					"id" : "obj-41",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 359.901934226354001, 241.551560819149017, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "matrixF: (list) factor list",
					"id" : "obj-40",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.136343002319336, 13.351988077163696, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 378.56860089302063, 46.911285877227783, 119.0, 22.0 ],
					"text" : "patcherargs 128 128"
				}

			}
, 			{
				"box" : 				{
					"comment" : "matrixF: (matrix) read matrix",
					"id" : "obj-33",
					"index" : 4,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 359.901934226354001, 13.351988077163696, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "matrixF: (int) index of factor removed",
					"id" : "obj-32",
					"index" : 3,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 265.294095039367676, 13.351988077163696, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "matrixF: (bang) extend factor list",
					"id" : "obj-31",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 183.374975204467773, 13.351988077163696, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 178.499975204467773, 230.80083441734314, 31.0, 22.0 ],
					"text" : "* -1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 265.294095039367676, 56.058804750442505, 40.0, 22.0 ],
					"text" : "t i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 105.749975204467773, 149.98265141248703, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 139.499975204467773, 230.80083441734314, 38.5, 22.0 ],
					"text" : "- 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 42.295433521270752, 117.800832092761993, 145.454541683197021, 22.0 ],
					"text" : "t i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 359.901934226354001, 208.001584708690643, 53.0, 22.0 ],
					"text" : "jit.matrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 359.901934226354001, 185.080943048000336, 41.0, 22.0 ],
					"text" : "jit.add"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 137.249975204467773, 149.98265141248703, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 168.749975204467773, 149.98265141248703, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "float" ],
					"patching_rect" : [ 42.136343002319336, 88.255376636981964, 197.613632202148438, 22.0 ],
					"text" : "unpack 0 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 168.749975204467773, 175.346287727355957, 71.0, 22.0 ],
					"text" : "pack 0 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 14.136343002319336, 61.52810400724411, 47.0, 22.0 ],
					"text" : "zl.nth 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 139.499975204467773, 203.494745910167694, 77.5, 22.0 ],
					"text" : "factorList"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.56860089302063, 73.975709676742554, 205.0, 22.0 ],
					"text" : "dim $1 $2, type float32, planecount 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 359.901934226354001, 154.992708563804626, 43.0, 22.0 ],
					"text" : "jit.mult"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 359.901934226354001, 117.800832092761993, 75.0, 22.0 ],
					"text" : "matrixVector"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 178.249975204467773, 140.843134641647339, 178.249975204467773, 140.843134641647339 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 2 ],
					"midpoints" : [ 51.795433521270752, 140.843134641647339, 345.588224172592163, 140.843134641647339, 345.588224172592163, 110.843134641647339, 406.735267559687315, 110.843134641647339 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 115.022704362869263, 140.843134641647339, 115.249975204467773, 140.843134641647339 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"midpoints" : [ 178.249975204467773, 173.843134641647339, 178.249975204467773, 173.843134641647339 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 1 ],
					"midpoints" : [ 146.749975204467773, 188.843134641647339, 163.624975204467773, 188.843134641647339 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 369.401934226354001, 209.843134641647339, 369.401934226354001, 209.843134641647339 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"midpoints" : [ 369.401934226354001, 230.843134641647339, 345.588224172592163, 230.843134641647339, 345.588224172592163, 179.843134641647339, 391.401934226354001, 179.843134641647339 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 369.401934226354001, 230.843134641647339, 369.401934226354001, 230.843134641647339 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"midpoints" : [ 295.794095039367676, 143.843134641647339, 146.749975204467773, 143.843134641647339 ],
					"source" : [ "obj-27", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 2 ],
					"midpoints" : [ 285.294095039367676, 101.843134641647339, 406.735267559687315, 101.843134641647339 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 3 ],
					"midpoints" : [ 274.794095039367676, 101.843134641647339, 425.401934226354001, 101.843134641647339 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"midpoints" : [ 187.999975204467773, 254.843134641647339, 345.588224172592163, 254.843134641647339, 345.588224172592163, 149.843134641647339, 393.401934226354001, 149.843134641647339 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 3 ],
					"midpoints" : [ 192.874975204467773, 74.843134641647339, 249.588224172592163, 74.843134641647339, 249.588224172592163, 197.843134641647339, 192.874975204467773, 197.843134641647339 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 274.794095039367676, 44.843134641647339, 274.794095039367676, 44.843134641647339 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 369.401934226354001, 44.843134641647339, 369.401934226354001, 44.843134641647339 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 388.06860089302063, 71.843134641647339, 388.06860089302063, 71.843134641647339 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 369.401934226354001, 140.843134641647339, 369.401934226354001, 140.843134641647339 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 23.636343002319336, 44.843134641647339, 23.636343002319336, 44.843134641647339 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 369.401934226354001, 179.843134641647339, 369.401934226354001, 179.843134641647339 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"midpoints" : [ 148.999975204467773, 263.843134641647339, 345.588224172592163, 263.843134641647339, 345.588224172592163, 149.843134641647339, 393.401934226354001, 149.843134641647339 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 115.249975204467773, 188.843134641647339, 148.999975204467773, 188.843134641647339 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"midpoints" : [ 388.06860089302063, 98.843134641647339, 388.068600893020687, 98.843134641647339 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 187.999975204467773, 227.843134641647339, 187.999975204467773, 227.843134641647339 ],
					"source" : [ "obj-93", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"midpoints" : [ 168.499975204467773, 227.843134641647339, 168.499975204467773, 227.843134641647339 ],
					"source" : [ "obj-93", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 148.999975204467773, 227.843134641647339, 148.999975204467773, 227.843134641647339 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"midpoints" : [ 51.636343002319336, 83.843134641647339, 51.636343002319336, 83.843134641647339 ],
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 2 ],
					"midpoints" : [ 178.249975204467773, 197.843134641647339, 178.249975204467773, 197.843134641647339 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 51.636343002319336, 110.843134641647339, 51.795433521270752, 110.843134641647339 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 1 ],
					"midpoints" : [ 230.249975204467773, 110.843134641647339, 230.249975204467773, 110.843134641647339 ],
					"source" : [ "obj-98", 1 ]
				}

			}
 ]
	}

}
