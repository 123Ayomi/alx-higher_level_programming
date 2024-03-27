#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get URL from command line argument
url=$1

# Send GET request using curl with custom header
curl -s -H "X-School-User-Id: 98" "$url"
