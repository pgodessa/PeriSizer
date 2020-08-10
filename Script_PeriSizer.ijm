extension = ".tif";
  dir1 = getDirectory("Choose Source Directory ");
  setBatchMode(true);
  n = 0;
  processFolder(dir1);

  function processFolder(dir1) {
     list = getFileList(dir1);
     for (i=0; i<list.length; i++) {
          if (endsWith(list[i], "/"))
              processFolder(dir1+list[i]);
          else if (endsWith(list[i], extension))
             processImage(dir1, list[i]);
      }
  }

  function processImage(dir1, name) {
    open(dir1+name);
    print(n++, name);
	run("To ROI Manager");
	roiManager("Select", 0);
	run("Create Mask");
	run("Exact Signed Euclidean Distance Transform (3D)");
	roiManager("Select", 1);
	
		Roi.getContainedPoints(x,y);
				for (i=0; i<x.length; i++){
    setResult(name, i, -0.4748858516878298*getPixel(x[i], y[i]));
	}

     close();
  }
