#!/bin/bash
# This script verifies that the user has used the ORDER BY clause correctly.

# Check if the 'users' table has been queried with ORDER BY
query_log="/root/.sqlite_history" # Path to the SQLite history file

if grep -q "SELECT .* FROM users ORDER BY" "$query_log"; then
    echo "Great! You have successfully sorted the query results."
    exit 0
else
    echo "It seems like you haven't used the ORDER BY clause in your query. Try again!"
    exit 1
fi
