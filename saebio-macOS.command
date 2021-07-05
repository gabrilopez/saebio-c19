#!/bin/bash
cd "$(dirname "$0")"
cd saebio/metabase && java -jar metabase.jar &
cd saebio && java -jar ApiRestService.jar -d sqlite/metabase.db -e 90 -p 4567 &
sleep 15 && cd saebio/saebio-ui && node server.js