#!/bin/bash
export RESULT_LOG="/tmp/results.log"
rm -rf "${RESULT_LOG}"
helm template /app >> "${RESULT_LOG}"
helm conftest /app >> "${RESULT_LOG}"
