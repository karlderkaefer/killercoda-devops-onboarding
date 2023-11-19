
# Sorting Data with ORDER BY Clause

In this section, you'll learn how to organize your SQL query results using the ORDER BY clause. Sorting data is crucial for presenting information in a readable and meaningful way.

## Using the ORDER BY Clause
The ORDER BY clause is used to sort the result set of a SQL query by one or more columns. The basic syntax is:

```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... [ASC|DESC];
```

## Task
- Write a query to select all columns from the `users` table and sort the results by age in ascending order.
- Execute the query and observe how the results are sorted.

Remember, the default sorting order is ascending (ASC). You can also sort in descending order using DESC.

## Viewing Table Structure
To view the structure of the `users` table, use the command:
```sql
PRAGMA table_info(users);
```

Happy sorting!