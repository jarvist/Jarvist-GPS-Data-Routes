# Jarvist-GPS-Data-Routes

I've managed to lose my archive of various GPS waypoints and routes, on moving
from machine to machine and home directory to home directory.

Expect a chaotic mix of cave entrances, and cyclng routes - my two main uses of
my Garmin HCx and Hs.

## Workflow

I've found the best workflow for GPS Cycle Routes is:-
* Plan on Google maps, start with some bicycling directions + then tweak by dragging the rhumb line
  * Nb: Google maps doesn't show the UK Sustrans routes, whereas Open Cycle map
    does!
* Check with the Pegman (Google streetview), in the split screen layout, that none of your quiet country roads are actually 2-lane monsters
* Extract a GPX via http://www.gpsvisualizer.com/convert_input , copy and paste the shared link from GMaps
* Upload the GPX file to your GPS / to http://bikehike.co.uk ; to look at the OS map for bits of it + get an elevation profile. You can tweak it here + cross reference Google / OSM (for the Sustrans routes).
* You can tweak it further here, and export it as a GPX route (+ name it sensibly)

## Garmin eTrex (HCx)

* Take your GPX file from above, use GPSBabel to simplify the route (the HCx is limited to ~256 waypoints in a route). Here we use the crosstrack method to simplify the route, with a fairly coarse limit of 50 m.
* I also then use GPSBabel to upload the route (-r) directly to the GPS via the Garmin data format (I never know where to put the GPX when it's on as Mass Storage)
* On the bike, I follow the route - but only so that it displays in pleasing Pink over the opencycle map.

```
gpsbabel -r -i gpx -f BU_36km_East_L_.gpx -x simplify,crosstrack,error=0.050k -o gpx -F BU_36km_East_L_Simplified.gpx
sudo gpsbabel -r -i gpx -f BU_36km_East_L_Simplified.gpx  -o garmin -F /dev/ttyUSB0
```

## Google Maps Links

I'm not sure how fragile these links are; as you'd imagine that when the algorithms for routing changes, so will the route!

[GMaps: East from Uni, 36 km loop](https://maps.google.co.uk/maps?saddr=Oakley&daddr=51.3582878,-2.3161266+to:51.3484171,-2.3010279+to:51.362453,-2.299357+to:51.3597626,-2.2656423+to:51.355375,-2.2629353+to:51.364723,-2.2385152+to:51.394589,-2.2590841+to:Ashwicke+Rd+to:Mill+Ln+to:51.3926022,-2.3319101+to:51.382654,-2.3405474+to:Unknown+road&hl=en&ll=51.361384,-2.271252&spn=0.043732,0.264187&sll=51.381424,-2.306442&sspn=0.193922,0.528374&geocode=FcTtDwMdqHDc_w%3BFU-qDwMdoqjc_ylN_V8uNoBxSDE2KQ0TewdOYQ%3BFcGDDwMdnePc_ykB4gaqI4BxSDHz7myF74RPyg%3BFZW6DwMdI-rc_ymBUS6WK4BxSDEdJrZOT95hDQ%3BFRKwDwMd1m3d_ykb7pBDon9xSDGuYP9q_Aza3w%3BFe-eDwMdaXjd_ymjubmEvH9xSDGCRPyWzAAuoQ%3BFXPDDwMdzdfd_yl_SkfwVX5xSDESbtU8BR0c5Q%3BFR04EAMddIfd_ymz1n1nOn9xSDEw9wCSVjXueA%3BFUXoEAMd1PTc_w%3BFTJREAMdL4bc_w%3BFVowEAMd-mrc_ymP0uoDmoFxSDHBDeLxGxUSWw%3BFX4JEAMdPUnc_ykTWBDfoIFxSDEzwbwwzCP0cQ%3BFZ3xDwMdnm3c_w&dirflg=b&doflg=ptk&mra=luc&via=1,2,3,4,5,6,7,10,11&t=m&z=13&layer=c&cbll=51.361353,-2.271254&panoid=JnDAn92iuicY0Qg0IIGTHA&cbp=11,240.79,,0,13.8)
