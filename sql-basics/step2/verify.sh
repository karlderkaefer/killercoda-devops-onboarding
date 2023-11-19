#!/bin/bash
# This script verifies that the user has applied the WHERE clause correctly.

# Check if the 'users' table has been queried with a WHERE clause
query_log="/root/.sqlite_history" # Path to the SQLite history file

if grep -q "SELECT .* FROM users WHERE" "$query_log"; then
    echo "Well done! You've successfully used the WHERE clause in your query."
    exit 0
else
    echo "It looks like you haven't used the WHERE clause in your query yet. Give it another try!"
    exit 1
fi
