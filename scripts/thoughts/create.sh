#!/bin/bash

curl --include --request POST http://localhost:3000/thoughts \
  --header "Content-Type: application/json" \
  --data '{
    "thought": {
      "content": "Running is cool"
    }
  }'
