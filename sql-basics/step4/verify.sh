#!/bin/bash
# This script verifies that the user has used the LIMIT clause correctly.

# Check if the 'users' table has been queried with LIMIT
query_log="/root/.sqlite_history" # Path to the SQLite history file

if grep -q "SELECT .* FROM users LIMIT" "$query_log"; then
    echo "Excellent! You have successfully limited the query results."
    exit 0
else
    echo "It looks like you haven't used the LIMIT clause in your query. Give it a try!"
    exit 1
fi
