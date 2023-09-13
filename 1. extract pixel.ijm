T=getTitle();
 
for (j = 0; j < nResults(); j++) {
    roiManager("Select", j);
    i=j+1;
run("Save XY Coordinates...", "save=[/Users/seki/"+i+".csv]");
selectWindow(T);  
}
