#!/bin/bash

url="$1"

# Check if URL is provided
if [ -z "$url" ]; then
    echo "Error: No URL provided."
    echo "Usage: $0 <URL>"
    exit 1
fi

source .env

response=$(curl -s "https://rapidgator.net/api/v2/user/login?login=$email&password=$password")
#echo $response
token=$(echo $response | jq -r '.response.token')
#echo $token

response=$(curl -s "https://rapidgator.net/api/v2/file/check_link?url=$url&token=$token")
#echo $response
filename=$(echo $response | jq -r '.response[0].filename')
#echo i$filename

response=$(curl -s --location "https://www.rapidgator.net/api/v2/file/download?url=$url&token=$token")
#echo $response
download=$(echo $response | jq -r '.response.download_url')
#echo $download

curl --location -o $filename "$download"
