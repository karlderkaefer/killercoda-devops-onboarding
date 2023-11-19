#!/bin/bash
# This script verifies that the user has performed a JOIN operation in their query.

# Check if a JOIN operation has been used
query_log="/root/.sqlite_history" # Path to the SQLite history file

if grep -q "SELECT .* JOIN" "$query_log"; then
    echo "Excellent! You have successfully performed a JOIN operation in your SQL query."
    exit 0
else
    echo "It looks like you haven't tried a JOIN operation yet. Try using INNER JOIN or LEFT JOIN in your query."
    exit 1
fi
