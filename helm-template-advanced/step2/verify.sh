#!/bin/bash
export RESULT_LOG="/tmp/results.log"
rm -rf "${RESULT_LOG}"
helm template /app 2>&1 | tee "${RESULT_LOG}"
helm conftest /app 2>&1 | tee "${RESULT_LOG}"
