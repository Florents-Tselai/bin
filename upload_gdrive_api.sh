#!/bin/bash

file=$1
mime_type=`file -b --mime-type $1`

echo $file $mime_type

curl -X POST -L \
    -H "Authorization: Bearer `echo $GDRIVE_API_TOKEN`" \
    -F "metadata={name : '$file'};type=application/json;charset=UTF-8" \
    -F "file=@$file;type=$mime_type" \
    "https://www.googleapis.com/upload/drive/v3/files?uploadType=multipart"
