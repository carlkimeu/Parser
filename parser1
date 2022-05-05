#!/bin/bash

# URL to the logs
#url="https://coderbyte.com/api/challenges/logs/web-logs-raw"

url="/home/carl/log"

# Loop through each line of the logs
while read line; do
   # Find the lines that contain the string coderbyte heroku/router
   if [[ $line = *"coderbyte heroku/router"* ]]; then
       # Print the request_id value to a new line
       echo "$line" | cut -d' ' -f9
       # If the fwd key has the value of MASKED, add a [M] to the end of the line
       if [[ $line = *"fwd=MASKED"* ]]; then
           echo "[M]"
       fi
   fi
done < <(curl -s $url)
