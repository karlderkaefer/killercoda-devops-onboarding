
# Basic Queries in SQL

Now that you're familiar with the basics of SQL and databases, let's dive into writing your first SQL query.

## Writing Your First SELECT Statement
The SELECT statement is used to select data from a database. The basic syntax is:

```sql
SELECT column1, column2, ...
FROM table_name;
```

In this step, you'll try selecting data from the `users` table that we created earlier.

## Task
- Write a query to select all columns from the `users` table.
- Execute the query and observe the output.

Remember, SQL is not case-sensitive, but it's a good practice to write SQL keywords in uppercase.

Happy querying!

## Viewing Table Structure
To view the structure of the `users` table, use the command:
```sql
PRAGMA table_info(users);
```{{exec}}