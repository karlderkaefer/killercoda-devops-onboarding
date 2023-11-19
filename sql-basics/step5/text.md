
# Using Aggregate Functions in SQL

This section will introduce you to aggregate functions in SQL, which are used to perform calculations on a set of values to return a single value. Common aggregate functions include COUNT, AVG, MAX, and MIN.

## Understanding Aggregate Functions
- `COUNT()`: Returns the number of rows that matches a specified criterion.
- `AVG()`: Returns the average value of a numeric column.
- `MAX()`: Returns the maximum value of a column.
- `MIN()`: Returns the minimum value of a column.

## Task
- Use the COUNT function to find out how many users are in the `users` table.
- Find the average age of users using the AVG function.

These functions are incredibly useful for getting insights from data.

## Viewing Table Structure
To view the structure of the `users` table, use the command:
```sql
PRAGMA table_info(users);
```

Explore the power of aggregate functions!