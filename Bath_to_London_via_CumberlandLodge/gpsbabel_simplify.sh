# Simplify GPS routes, by cross-track with a 50 m error 
# This gives a nice short track, which loads quickly, but isn't too bad to
# follow when cycling countryside lanes.

for f
do
    echo "Simplifying track ${f}"
    gpsbabel -i gpx -f "${f}" -x simplify,crosstrack,error=0.050k -o gpx -F "${f%.*}-SIMPLIFIED.gpx"
done
