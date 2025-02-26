Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 22
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use anp_d0453;
Database changed
mysql> create table emp(id varchar(10) not null primary key, name varchar(50) not null, mobileno varchar(15) not null, address varchar(100) not null, salary int not null);
Query OK, 0 rows affected (0.87 sec)

mysql> insert into emp values ('e101','Nandini', '1234567890', 'Pune' , 70000);
Query OK, 1 row affected (0.15 sec)

mysql> insert into emp values ('e102','Meena', '9087654321', 'Banglore', 50000);
Query OK, 1 row affected (0.13 sec)

mysql> insert into emp values ('e103', 'Niharika' ,  '9876543210', 'Mumbai' , 45000) ;
Query OK, 1 row affected (0.10 sec)

mysql> insert into emp values ('e104', 'Tulsi', '8765432190', 'Hyderabad', 40000);
Query OK, 1 row affected (0.06 sec)

mysql> insert into emp values ('e105', 'Shreya', '7654321890', 'Chennai', 35000);
Query OK, 1 row affected (0.09 sec)

mysql> select * from emp;
+------+----------+------------+-----------+--------+
| id   | name     | mobileno   | address   | salary |
+------+----------+------------+-----------+--------+
| e101 | Nandini  | 1234567890 | Pune      |  70000 |
| e102 | Meena    | 9087654321 | Banglore  |  50000 |
| e103 | Niharika | 9876543210 | Mumbai    |  45000 |
| e104 | Tulsi    | 8765432190 | Hyderabad |  40000 |
| e105 | Shreya   | 7654321890 | Chennai   |  35000 |
+------+----------+------------+-----------+--------+
5 rows in set (0.00 sec)

mysql> select * from emp where name LIKE 'T%' ;
+------+-------+------------+-----------+--------+
| id   | name  | mobileno   | address   | salary |
+------+-------+------------+-----------+--------+
| e104 | Tulsi | 8765432190 | Hyderabad |  40000 |
+------+-------+------------+-----------+--------+
1 row in set (0.04 sec)

mysql> select * from emp where name LIKE '%i' ;
+------+---------+------------+-----------+--------+
| id   | name    | mobileno   | address   | salary |
+------+---------+------------+-----------+--------+
| e101 | Nandini | 1234567890 | Pune      |  70000 |
| e104 | Tulsi   | 8765432190 | Hyderabad |  40000 |
+------+---------+------------+-----------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp where name LIKE 'M____';
+------+-------+------------+----------+--------+
| id   | name  | mobileno   | address  | salary |
+------+-------+------------+----------+--------+
| e102 | Meena | 9087654321 | Banglore |  50000 |
+------+-------+------------+----------+--------+
1 row in set (0.00 sec)

mysql> Update emp set salary = 75000 where id= 'e102' ;
Query OK, 1 row affected (0.22 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+------+----------+------------+-----------+--------+
| id   | name     | mobileno   | address   | salary |
+------+----------+------------+-----------+--------+
| e101 | Nandini  | 1234567890 | Pune      |  70000 |
| e102 | Meena    | 9087654321 | Banglore  |  75000 |
| e103 | Niharika | 9876543210 | Mumbai    |  45000 |
| e104 | Tulsi    | 8765432190 | Hyderabad |  40000 |
| e105 | Shreya   | 7654321890 | Chennai   |  35000 |
+------+----------+------------+-----------+--------+
5 rows in set (0.00 sec)

mysql> delete from emp where id = 'e105';
Query OK, 1 row affected (0.14 sec)

mysql> select * from emp;
+------+----------+------------+-----------+--------+
| id   | name     | mobileno   | address   | salary |
+------+----------+------------+-----------+--------+
| e101 | Nandini  | 1234567890 | Pune      |  70000 |
| e102 | Meena    | 9087654321 | Banglore  |  75000 |
| e103 | Niharika | 9876543210 | Mumbai    |  45000 |
| e104 | Tulsi    | 8765432190 | Hyderabad |  40000 |
+------+----------+------------+-----------+--------+
4 rows in set (0.00 sec)
