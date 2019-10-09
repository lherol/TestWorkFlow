/**
 * reproducible bioimage analysis workflow
 * Scientific Integrity Course
 * 2019-10-09: Laura Herold
 */

// load 
run("HeLa Cells (1.3M, 48-bit RGB)");

// splitt channels to get blue, red, green
run("Split Channels");

// go for selected threshold
run("Auto Threshold", "method=MaxEntropy white");

// set measurments, analyze particles and save results
run("Set Measurements...", "area mean standard min centroid center shape integrated display redirect=None decimal=3");

// exclude background by increasing size
run("Analyze Particles...", "size=10-Infinity show=Outlines display exclude clear include");
saveAs("Results", "C:/Users/laura/Desktop/Results.csv");

