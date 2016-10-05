#!/bin/bash

curl --include --request PATCH http://localhost:3000/thoughts/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "thought": {
      "content": "It is a beautiful day!",
      "question": "Should I go running?",
      "answers": "["Yes","No","Maybe"]",
    }
  }'
