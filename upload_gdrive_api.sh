#!/bin/bash

# Get a new token using a refreshed one
access_token=$(curl -s --request POST --data "client_id=$GDRIVE_API_CLIENT_ID&client_secret=$GDRIVE_API_CLIENT_SECRET&refresh_token=$GDRIVE_API_REFRESH_TOKEN&grant_type=refresh_token" https://accounts.google.com/o/oauth2/token | jq .access_token)

file=$1
mime_type=$(file -b --mime-type $1)

echo $file $mime_type

curl -X POST -L \
  -H "Authorization: Bearer $(echo $access_token)" \
  -F "metadata={name : '$file'};type=application/json;charset=UTF-8" \
  -F "file=@$file;type=$mime_type" \
  "https://www.googleapis.com/upload/drive/v3/files?uploadType=multipart"
