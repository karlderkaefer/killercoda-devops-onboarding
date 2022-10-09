#!/bin/bash

set -e
set -o pipefail

rm -rf /tmp/results.log

cd /app/step5

num=$(helm dep ls | wc -l)
expected=4
if ((num <= expected)); then
  helm dep ls >> /tmp/results.log
  echo "expected 3 helm dependencies. You need to add the sub-charts to dependencies." >> /tmp/results.log
  exit 1
fi

helm conftest . >> /tmp/results.log 2>&1

