#!/bin/bash

curl -sL \
-H "Content-Type: application/json; charset=UTF-8" \
-H "X-Accept: application/json" \
-d "{\"url\": \"$1\", \"consumer_key\": \"$POCKET_CONSUMER_KEY\",\"access_token\": \"$POCKET_ACCESS_TOKEN\"}" \
-X POST "https://getpocket.com/v3/add" | jq '.item.title'
