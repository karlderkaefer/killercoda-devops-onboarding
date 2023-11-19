
# Limiting Data with LIMIT Clause

In this part of the workshop, you'll learn how to use the LIMIT clause in SQL. This clause is essential for controlling the number of rows returned in your query results.

## Using the LIMIT Clause
The LIMIT clause is used to specify the maximum number of rows that the query should return. The basic syntax is:

```sql
SELECT column1, column2, ...
FROM table_name
LIMIT number;
```

## Task
- Write a query to select all columns from the `users` table but limit the results to just 2 rows.
- Execute the query and observe how the number of results is limited.

The LIMIT clause is particularly useful in large databases where you need a sample of data or when you're paginating results.

## Viewing Table Structure
To view the structure of the `users` table, use the command:
```sql
PRAGMA table_info(users);
```

Try limiting your query results!