#!/usr/bin/env bash

file=".key"
url="https://newsapi.org/v2/everything"
key_header='X-Api-Key:'
query=$1

if [ ! -n "${query}" ]; then
  echo "Please provide a query"
  exit 1
fi

if [ ! -f $file ]; then
  echo "Create a .key file with your API key"
  exit 1
fi

key=`cat .key`

if [ ! -z "${cat}" ]; then
  echo ".key file exists, but content is empty"
  exit 1
fi

curl --get "${url}" --header "${content_type}" --header "${key_header} ${key}" --data-urlencode "q=${query}"

