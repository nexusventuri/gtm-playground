#!/bin/bash

account_id=$(grep 'accountId' gtm-config.json | head -n 1 | sed 's/^.*"\([0-9]*\)".*$/\1/')
sed -i "s/$account_id/1234567890/g" gtm-config.json

container_id=$(grep 'containerId' gtm-config.json | head -n 1 | sed 's/^.*"\([0-9]*\)".*$/\1/')
sed -i "s/$container_id/87654321/g" gtm-config.json
