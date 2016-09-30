#!/bin/bash

curl --include --request PATCH http://localhost:3000/thoughts/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "thought": {
      "content": "Soccer is cool"
    }
  }'
