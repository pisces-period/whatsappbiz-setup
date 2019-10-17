#!/usr/bin/env bash

# get WhatsApp-Biz repo and spawn Docker containers

# https://developers.facebook.com/docs/whatsapp/installation/dev-single-instance
# https://developers.facebook.com/docs/whatsapp/changelog
# check out the changelog link above for the most current WA_API_VERSION
# replace the variables wrapped around {{ }}

mkdir ~/biz && cd ~/biz && \
git clone https://github.com/WhatsApp/WhatsApp-Business-API-Setup-Scripts.git && \
cp WhatsApp-Business-API-Setup-Scripts/installation/db.env ./ && \
cp WhatsApp-Business-API-Setup-Scripts/installation/docker-compose.yml ./ && \
export WA_API_VERSION="{{ CURRENT_VERSION }}" && \
docker-compose up -d
