#!/bin/bash

set -e
set -o pipefail

rm -rf /tmp/results.log

cd /app/step5

num="$(helm template . | grep -o '\-\-' | wc -l)"
if [[ "$num" != "5" ]]; then
  echo "expected 5 yaml deployments objects. You need to add the sub-charts to dependencies." > /tmp/results.log
  exit 1
fi

helm conftest . > /tmp/results.log 2>&1

