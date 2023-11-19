
#!/bin/bash
# This script verifies that the user has used an aggregate function in their query.

# Check if an aggregate function has been used
query_log="/root/.sqlite_history"  # Path to the SQLite history file

if grep -q "SELECT COUNT(" "$query_log" || grep -q "SELECT AVG(" "$query_log"; then
    echo "Great job! You've successfully used an aggregate function in your query."
    exit 0
else
    echo "It seems like you haven't used an aggregate function yet. Try using COUNT or AVG in your query."
    exit 1
fi