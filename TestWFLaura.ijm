/**
 * reproducible bioimage analysis workflow
 * Scientific Integrity Course
 * 2019-10-09: Laura Herold
 */

// load 
run("HeLa Cells (1.3M, 48-bit RGB)");

// splitt channels to get blue, red, green
run("Split Channels");

// select the threshold fitting best for your purpose
//run("Duplicate...", "title=original.tif");
//run("Auto Threshold", "method=[Try all] white");

// go for selected threshold
run("Auto Threshold", "method=MaxEntropy white");

// to measure one cell 
////setTool("wand");
//doWand(314, 180);

// measure 
//run("Measure");

// set measurments, analyze particles and save results
run("Set Measurements...", "area mean standard min centroid center shape integrated display redirect=None decimal=3");
run("Analyze Particles...", "  show=Outlines display exclude clear include");
saveAs("Results", "C:/Users/laura/Desktop/Results.csv");