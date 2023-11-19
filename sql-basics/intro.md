
# Welcome to SQL for Beginners

Welcome to your first step into the world of SQL! In this section, we will introduce you to the basics of databases and SQL.

## What is SQL?

SQL (Structured Query Language) is a standard language for accessing and manipulating databases. With SQL, you can query data, update records, and manage and create database structures.

## What You'll Learn

- What databases are and why they are essential.
- How SQL interacts with databases.
- Setting up your SQL environment for the first time.

Let's get started with setting up your SQL environment and exploring some basic concepts!

## Create Database

First we need to create the database for the scenario. Execute the following command to create the database:

```bash
sqlite3 workshop.db "CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT, age INTEGER);"
sqlite3 workshop.db "INSERT INTO users (name, age) VALUES ('Alice', 30), ('Bob', 25), ('Charlie', 35);"
```{{exec}}

## Viewing Table Structure

To view the structure of the `users` table, use the command:

```bash
sqlite3 workshop.db "PRAGMA table_info(users);"
```{{exec}}
