#!/bin/bash

rm -rf /tmp/results.log
cd /app/step5
helm conftest . > /tmp/results.log 2>&1

if [ "$(helm template . | grep '\-\-' | wc -l)" != 5 ]; then
  echo "expected 5 yaml deployments objects. You need to add the subcharts to dependencies."
fi
