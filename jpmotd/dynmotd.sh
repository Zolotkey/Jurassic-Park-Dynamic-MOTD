#!/usr/bin/env bash

#Jurassic Park - Needry Disables JP Security (Approx.)
JP="739850460"

#Jurassic World - Accident Date (Approx.)
#Comment out the line below if you want to stick with Jurassic Park only
JW="1451017800"

#Current Date/Time
CD=`date +%s`


#Lets see if we have passed the Jurassic World Events in Real Life
if [ $CD -ge $JW ]; then

	TS=$(($CD - $JW))

else

	TS=$(($CD - $JP))

fi

echo -e "Jurassic Park, System Security Interface release 2 (Jurassic World)
Version 15.3.0-10.11-ec
Time since last Dinosaur Attack:"
{
 ((d=$TS/(60*60*24)))
 ((h=($TS%(60*60*24))/(60*60)))
 ((m=($TS%(60*60))/60))
 ((s=$TS%60))
 printf "%02dd %02dh %02dm %02ds\n" $d $h $m $s
}
