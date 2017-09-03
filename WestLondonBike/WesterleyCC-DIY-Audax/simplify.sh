for i
do
    gpsbabel -t -i gpx -f "${i}" -x simplify,crosstrack,error=0.050k -o gpx -F "${i%.*}_simplified.gpx" 
done
