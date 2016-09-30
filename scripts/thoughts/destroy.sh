#!/bin/bash

curl --include --request DELETE http://localhost:3000/thoughts/$ID \
  --header "Authorization: Token token=$TOKEN"
