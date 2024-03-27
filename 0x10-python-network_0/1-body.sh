#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get URL from command line argument
url=$1

# Send GET request using curl and store response body in a variable
response_body=$(curl -s -o /dev/null -w "%{http_code}" "$url")

# Check if curl command was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to retrieve data from $url"
    exit 1
fi

# Check if response status code is 200
if [ "$response_body" -eq 200 ]; then
    curl -s "$url"
else
    echo "Response status code is not 200. Exiting..."
fi
