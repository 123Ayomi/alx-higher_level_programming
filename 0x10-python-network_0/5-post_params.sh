#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get URL from command line argument
url=$1

# Define email and subject variables
email="test@gmail.com"
subject="I will always be here for PLD"

# Send POST request using curl with email and subject variables
response_body=$(curl -s -X POST -d "email=$email&subject=$subject" "$url")

# Check if curl command was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to send POST request to $url"
    exit 1
fi

# Display the body of the response
echo "$response_body"
