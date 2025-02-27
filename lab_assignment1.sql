Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 23
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use anp_d0453;
Database changed
mysql> create table BankAccount(account_id int primary key, account_holder_name varchar(100) not null , account_balance decimal(10 ,2 ) not null );
Query OK, 0 rows affected (2.62 sec)

--Task 1: Insert Data into the BankAccount table  
mysql> insert into BankAccount (account_id , account_holder_name , account_balance) values (101 , 'zayn' , 50000), (102, 'john' , 45000) , (103, 'justin' , 35000), (104, 'json' ,40000) , (105, 'charlie' , 30000);
Query OK, 5 rows affected (0.20 sec)
Records: 5  Duplicates: 0  Warnings: 0

--Task 2: Retrieve account_holder_name and account_balance for all account holders  
mysql> select account_holder_name , account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| zayn                |        50000.00 |
| john                |        45000.00 |
| justin              |        35000.00 |
| json                |        40000.00 |
| charlie             |        30000.00 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

-- Task 3: Retrieve account_holder_name and account_balance where account_balance is more than 30,000  
mysql> select account_holder_name , account_balance from BankAccount where account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| zayn                |        50000.00 |
| john                |        45000.00 |
| justin              |        35000.00 |
| json                |        40000.00 |
+---------------------+-----------------+
4 rows in set (0.02 sec)

-- Task 4: Update the account_balance of the account holder whose account_id is 101  
mysql> update BankAccount set account_balance = 60000 where account_id = 101 ;
Query OK, 1 row affected (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | zayn                |        60000.00 |
|        102 | john                |        45000.00 |
|        103 | justin              |        35000.00 |
|        104 | json                |        40000.00 |
|        105 | charlie             |        30000.00 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)
