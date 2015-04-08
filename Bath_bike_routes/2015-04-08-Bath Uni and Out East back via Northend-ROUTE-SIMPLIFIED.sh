gpsbabel -r -i gpx -f BU_36km_East_L_.gpx -x simplify,crosstrack,error=0.050k -o gpx -F BU_36km_East_L_Simplified.gpx
sudo gpsbabel -r -i gpx -f BU_36km_East_L_Simplified.gpx  -o garmin -F /dev/ttyUSB0
