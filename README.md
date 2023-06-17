# SQL-cursor-usage

_In SQL procedures_, a **cursor make it possible to define a result set (a set of data rows) and perform complex logic on a row by row basis.** By using the same mechanics, an SQL procedure can also define a result set and return it directly to the caller of the SQL procedure or to a client application.

A cursor can be viewed as a pointer to one row in a set of rows. The cursor can only reference one row at a time, but can move to other rows of the result set as needed.

To use cursors in SQL procedures, you need to do the following:
Declare a cursor that defines a result set.
Open the cursor to establish the result set.
Fetch the data into local variables as needed from the cursor, one row at a time.
Close the cursor when done
To work with cursors you must use the following SQL statements:
-  DECLARE CURSOR
-  OPEN
-  FETCH
-  CLOSE
