#!/bin/bash

set -e
set -o pipefail

cd /app/step5

if [[ "$(helm template . | grep '\-\-' | wc -l)" != 5 ]]; then
  echo "expected 5 yaml deployments objects. You need to add the subcharts to dependencies."
fi
rm -rf /tmp/results.log

helm conftest . > /tmp/results.log 2>&1

