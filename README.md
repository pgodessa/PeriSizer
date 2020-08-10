# PeriSizer
Scripts measuring the periplasmic space of bacteria at regular intervals based on ImageJ overlays delimiting the IM and OM.

# How to use
- Open your image in ImageJ	
- Use the polygon to finely delimit the inner membrane and add it to the ROI (key “t”) 
- Use the segmented line to finely delimit the outer membrane and add it to the ROI 
- Save image in a new folder
- Repeat until all images are processed
- Run script 
- Define input folder and output folder
- New table with measurements - keeping original images names - is created 

<b>You must change the value "-0.4748858516878298" at line #28 corresponding to your own pixel size ratio
