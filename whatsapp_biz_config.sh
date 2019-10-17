#!/usr/bin/env bash

# https://developers.facebook.com/docs/whatsapp/api/users/login
# first login and authentication token generation
# replace the variables wrapped around {{ }} 
# OBS: The authorization header contains the base64 encoding for 'admin:secret' authentication

curl -k -X POST https://"{{ HOSTNAME }}":"{{ PORT }}"/v1/users/login \
  -w "%{http_code}\n" \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Basic YWRtaW46c2VjcmV0' \
  -d '{"new_password" : "{{ NEW_PASSWORD }}"}' > auth_token.json
