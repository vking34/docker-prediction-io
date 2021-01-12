#!/bin/bash

pio status
pio app list
pio app new chozoi-universal-recommender-2
ACCESS_KEY=`pio app show chozoi-universal-recommender-2 | grep Key | cut -f 7 -d ' '`
echo -n "Access key: "
echo $ACCESS_KEY
python3 examples/import_handmade.py --access_key $ACCESS_KEY --file data/sample-handmade-data.txt

pio build --verbose
pio train  -- --driver-memory 8g --executor-memory 8g