#!/bin/bash

function replace_ids_in_file {
  file_name=$1
  account_id=$(grep 'accountId' $file_name | head -n 1 | sed 's/^.*"\([0-9]*\)".*$/\1/')
  echo "replacing account id: $account_id with: 1234567890"
  sed -i "s/$account_id/1234567890/g" $file_name

  container_id=$(grep 'containerId' $file_name | head -n 1 | sed 's/^.*"\([0-9]*\)".*$/\1/')
  echo "replacing container id: $container_id with: 87654321"
  sed -i "s/$container_id/87654321/g" $file_name
}

replace_ids_in_file advanced-gtm-config.json
replace_ids_in_file basic-gtm-config.json

