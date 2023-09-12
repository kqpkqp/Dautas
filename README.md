# Dautas
1. two endpoints.R
   Please locate and set the directory for the XX_ARS_Results.csv file.
   This code obtains the positions of both endpoints of the ARS.
3. 1um ERES.R
   Please locate and set the directory for the XX_ERES_Results.csv file.
   This code locates ERES points that are 1um away from each of the two endpoints and determines which of these ERES points is closest to one of the endpoints.
5. class for pairs.R
   This code categorizes ARS-ERES pairs into three classes. It first classifies ERES points that are near the endpoints or closer to the center point, and then removes the densely overlapping regions around the center point.
7. minimum distance.R
   Please locate and set the directory for the XX_ARS_pixel.csv file and XX_ERES_pixel.csv file.
   This code first calculates the distances from all pixels surrounding each endpoint to the corresponding ERES. It takes the minimum distance value for each ERES and then combines these minimum distances. Redundancies caused by multiple pixels representing the same minimum distance for the same ERES structure are then removed.
   Finally, save the results to a directory of your choice.
