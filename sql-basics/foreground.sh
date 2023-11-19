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

echo "SQL environment set up"
