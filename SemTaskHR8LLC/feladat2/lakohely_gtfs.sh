#!/bin/bash
if [ -e volanbusz_gtfs.zip ]; then
    rm volanbusz_gtfs.zip
fi

if [ -d gtfs ]; then
    rm -r gtfs
fi

wget "https://gtfs.kti.hu/public-gtfs/volanbusz_gtfs.zip"
unzip volanbusz_gtfs -d gtfs
cat gtfs/routes.txt | grep "Lőrinci"