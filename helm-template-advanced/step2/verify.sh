#!/bin/bash

rm -rf /tmp/results.log
cd /app/step2
helm conftest . > /tmp/results.log 2>&1
