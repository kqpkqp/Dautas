# Dautas
1. 1. extract pixel
   After obtaining XX_ARS_Results.csv file, execute this code in the Fiji software's Macro to obtain all the ARS pixel position.
2. 1. Integrate ARS pixel 1.R
   Compile all the ARS pixel information into a single file.
3. 1. Integrate ARS pixel 2.R
   Supplement each data point with corresponding image Number(Label) and ARS structure numbers (No.)，saved as XX_ARS_pixel.csv file.
4. 1. Integrate ERES pixel 1.R
   Unlike ARS, since it's not batch-processed for each image with clarity of ERES dots, numbers were just changed in the code(j), and ERES pixel information from each image was semi-automatically integrated and stored. j is image Number(Label)
5. 1. Integrate ERES pixel 2.R
   Integrate all the information into one file, saved as XX_ERES_pixel.csv file..
6. 2. two endpoints.R
   Please locate and set the directory for the XX_ARS_Results.csv file.
   This code obtains the positions of both endpoints of the ARS.
7. 3. 1um ERES.R
   Please locate and set the directory for the XX_ERES_Results.csv file.
   This code locates ERES points that are 1um away from each of the two endpoints and determines which of these ERES points is closest to one of the endpoints.
8. 4. class for pairs.R
   This code categorizes ARS-ERES pairs into three classes. It first classifies ERES points that are near the endpoints or closer to the center point, and then removes the densely overlapping regions around the center point.
9. 5. minimum distance.R
   Please locate and set the directory for the XX_ARS_pixel.csv file and XX_ERES_pixel.csv file.
   This code first calculates the distances from all pixels surrounding each endpoint to the corresponding ERES. It takes the minimum distance value for each ERES and then combines these minimum distances. Redundancies caused by multiple pixels representing the same minimum distance for the same ERES structure are then removed.
   Finally, save the distance results to a directory of your choice.
