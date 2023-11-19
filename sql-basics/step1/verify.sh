#!/bin/bash
# This script verifies that the user has executed the SELECT query correctly.

# Check if the 'users' table has been queried
query_log="/root/.sqlite_history" # Path to the SQLite history file

if grep -q "SELECT .* FROM users" "$query_log"; then
    echo "Congratulations! You've successfully executed your first SQL query."
    exit 0
else
    echo "It seems like you haven't executed the SELECT query on the 'users' table yet. Try again!"
    exit 1
fi
