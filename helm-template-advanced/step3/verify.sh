#!/bin/bash

rm -rf /tmp/results.log
cd /app
helm conftest /app > /tmp/results.log 2>&1
