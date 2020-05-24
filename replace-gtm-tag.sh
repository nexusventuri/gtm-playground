#!/bin/bash

if [[ -z "$1" ]]; then
  echo "Please pass the tag as an argument e.g.:"
  echo "$ $0 'GTM-XXXXXXX'"
  exit 1
fi

sed -i "s/GTM-[^'\"]*\(['\"]\)/$1\1/g" _layouts/default.html
