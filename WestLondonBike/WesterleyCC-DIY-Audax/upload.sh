for i
do
 sudo gpsbabel -t -i gpx -f "${i}"  -o garmin -F /dev/ttyUSB0
done
