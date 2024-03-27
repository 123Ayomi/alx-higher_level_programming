#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get URL from command line argument
url=$1

# Send request using curl and store response body in a temporary file
response=$(curl -s -o /tmp/response_body "$url")

# Check if curl command was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to retrieve data from $url"
    exit 1
fi

# Get the size of the response body in bytes
size=$(stat -c %s /tmp/response_body)

# Display the size of the response body
echo "Size of the response body: $size bytes"

# Clean up temporary file
rm /tmp/response_body

