#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get URL from command line argument
url=$1

# Send HEAD request using curl and retrieve headers
headers=$(curl -sI "$url")

# Extract allowed HTTP methods from headers using grep
allowed_methods=$(echo "$headers" | grep -i '^Allow:' | sed 's/^Allow: //i')

# Display the allowed HTTP methods
echo "Allowed HTTP methods for $url: $allowed_methods"
