#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get URL from command line argument
url=$1

# Send DELETE request using curl and display the body of the response
curl -s -X DELETE "$url"
