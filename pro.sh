#!/bin/bash
read -p "Enter file name: " fname
case "$2" in

	"file") 
	echo "--Downloading file--"
	read -p "Enter file extension: ." ftype
	i=0
	;;
	
	"page") 
	echo "--Downloading webpage--"
	i=1
	;;
	
	*) echo "ERROR: Invalid file type"
  
esac


if [ $i = 0 ]
then 
	wget -r -l1 -H -t1 -nd -N -np -A."$ftype" -erobots=off -O "$fname"."$ftype" "$1"
  
elif [ $i = 1 ]
then
	wget -O "$fname".html "$1" 
  
else
	echo "error"
fi
