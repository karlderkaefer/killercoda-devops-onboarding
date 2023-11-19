#!/bin/bash
# This script sets up the basic SQL environment for the workshop

# Install SQLite - a simple SQL database
apt-get update
apt-get install -y sqlite3

# wait until sqlite3 is ready
# wait until sqlite3 is ready
until sqlite3 --version; do
    sleep 1
done

# Create a sample database and table for the workshop
sqlite3 workshop.db "CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT, age INTEGER);"

# Populate the table with sample data
sqlite3 workshop.db "INSERT INTO users (name, age) VALUES ('Alice', 30), ('Bob', 25), ('Charlie', 35);"

echo "SQL environment set up. You can now start interacting with your SQL database."
