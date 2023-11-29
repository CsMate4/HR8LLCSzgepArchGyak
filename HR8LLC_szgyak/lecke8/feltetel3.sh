#!/bin/bash
if [ -e gtfs.zip ]; then
	rm gtfs.zip
fi

if [ -d gtfs ]; then
	rm -r gtfs
fi

wget "https://gtfsapi.mvkzrt.hu/gtfs/gtfs.zip"
unzip gtfs.zip -d gtfs
cat gtfs/routes.txt | grep "Centrum"
