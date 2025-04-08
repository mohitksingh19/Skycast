#!/bin/bash

url="http://localhost:4000"

# Send a GET request and check the HTTP status code
status_code=$(curl -o /dev/null -s -w "%{http_code}" "$url")

if [ "$status_code" -eq 200 ]; then
  echo "Success: The status code for $url is 200 OK."
else
  echo "Error: The status code for $url is $status_code."
fi
