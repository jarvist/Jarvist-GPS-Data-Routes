# Upload via GPSbabel to Garmin on USB 

for f
do
    echo "Uploading GPX ${f}"
    gpsbabel -t -i gpx -f "${f}" -o garmin -F usb:
done
