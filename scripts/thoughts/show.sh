#!/bin/bash

curl --include --request GET http://localhost:3000/thoughts/$ID \
  --header "Authorization: Token token=$TOKEN"
