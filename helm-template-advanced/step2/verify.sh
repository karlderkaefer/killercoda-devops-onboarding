#!/bin/bash

rm -rf /tmp/results.log
cd /app/step2
helm conftest /app > /tmp/results.log 2>&1
