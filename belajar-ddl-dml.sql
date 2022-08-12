# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
5 rows in set (0.166 sec)

MariaDB [(none)]> CREATE DATABASE sekolah;
Query OK, 1 row affected (0.022 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
6 rows in set (0.002 sec)

MariaDB [(none)]> CREATE db_maruf;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'db_maruf' at line 1
MariaDB [(none)]> use sekolah;
Database changed
MariaDB [sekolah]> show sekolah;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'sekolah' at line 1
MariaDB [sekolah]> create database db_maruf';
    '> create database db_maruf;
    '> '
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '';
create database db_maruf;
'' at line 1
MariaDB [sekolah]> create database db_maruf;
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| db_maruf           |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
7 rows in set (0.001 sec)

MariaDB [sekolah]> CREATE TABLE siswa
    ->
    ->
    ->
    ->
    ->
    ->
    -> 9;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '9' at line 8
MariaDB [sekolah]> CREATE TABLE siswa(
    -> nis CHAR(10) PEIMARY KEY,
    -> nama VARCHAR(100),
    -> jk CHAR(1),
    -> tmp_lahir VARCHAR(50),
    -> tgl_lahir DATE,
    -> alamat TEXT,
    -> kelas VARCHAR(10),
    -> nilai FLOAT,
    -> jomblo BOOLEAN);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'KEY,
nama VARCHAR(100),
jk CHAR(1),
tmp_lahir VARCHAR(50),
tgl_lahir DATE,
al...' at line 2
MariaDB [sekolah]> DESCRIBE siswa;
ERROR 1146 (42S02): Table 'sekolah.siswa' doesn't exist
MariaDB [sekolah]> SHOW TABLES;
Empty set (0.001 sec)

MariaDB [sekolah]> DESCRIBE siswa;
ERROR 1146 (42S02): Table 'sekolah.siswa' doesn't exist
MariaDB [sekolah]> USE sekolah;
Database changed
MariaDB [sekolah]> CREATE TABLE siswa;
ERROR 1113 (42000): A table must have at least 1 column
MariaDB [sekolah]> CREATE TABLE siswa(
    -> nis CHAR(10) PEIMARY KEY,
    -> nama VARCHAR(100),
    -> jk CHAR(1),
    -> tmp_lahir VARCHAR(50),
    -> tgl_lahir DATE,
    -> alamat TEXT,
    -> kelas VARCHAR(10),
    -> nilai FLOAT,
    -> jomblo BOOLEAN);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'KEY,
nama VARCHAR(100),
jk CHAR(1),
tmp_lahir VARCHAR(50),
tgl_lahir DATE,
al...' at line 2
MariaDB [sekolah]> CREATE TABLE siswa(
    ->
    -> nis CHAR(10) PRIMARY KEY,
    -> nama VARCHAR(100),
    -> jk CHAR(1),
    -> tmp_lahir VARCHAR(50),
    -> tgl_lahir DATE,
    -> alamat TEXT,
    -> kelas VARCHAR(10),
    -> nilai FLOAT,
    -> jomblo BOOLEAN);
Query OK, 0 rows affected (0.230 sec)

MariaDB [sekolah]> SHOW TABLES;
+-------------------+
| Tables_in_sekolah |
+-------------------+
| siswa             |
+-------------------+
1 row in set (0.001 sec)

MariaDB [sekolah]> DESCRIBE siswa;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| nis       | char(10)     | NO   | PRI | NULL    |       |
| nama      | varchar(100) | YES  |     | NULL    |       |
| jk        | char(1)      | YES  |     | NULL    |       |
| tmp_lahir | varchar(50)  | YES  |     | NULL    |       |
| tgl_lahir | date         | YES  |     | NULL    |       |
| alamat    | text         | YES  |     | NULL    |       |
| kelas     | varchar(10)  | YES  |     | NULL    |       |
| nilai     | float        | YES  |     | NULL    |       |
| jomblo    | tinyint(1)   | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
9 rows in set (0.063 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100461',
    -> 'muhammad maruf hartanto',
    -> 'l',
    -> 'subang',
    -> '2005-06-07',
    -> 'manyingsal',
    -> '11-RPL-1',
    -> '99.9',
    -> '1');
Query OK, 1 row affected (0.365 sec)

MariaDB [sekolah]> SELECT * from siswa;
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
| nis      | nama                    | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai | jomblo |
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
| 12100461 | muhammad maruf hartanto | l    | subang    | 2005-06-07 | manyingsal | 11-RPL-1 |  99.9 |      1 |
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
1 row in set (0.003 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '21100018',
    -> 'adnan maulana',
    -> 'L',
    -> 'subang',
    -> '2005-08-17',
    -> 'cigadung',
    -> '11-RPL-2',
    -> '81.32',
    -> '1');
Query OK, 1 row affected (0.073 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100095',
    -> arzena haqi muhammad',
    '> 'L',
    '> 'subang','
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'haqi muhammad',
'L',
'subang','' at line 3
MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100095',
    -> 'arzena haqi muhammad',
    -> 'L',
    -> 'subang','
    '> '2005-11-27',
    '> 'sukamelang',
    '> '11-RPL-1',
    '> '89.33',
    '> '1');
    '> '
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '2005-11-27',
'sukamelang',
'11-RPL-1',
'89.33',
'1');
'' at line 5
MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100095',
    -> 'arzena haqi muhammad',
    -> 'L',
    -> 'subang',
    ->
    -> '
    '> ;
    '> ;
    '> .
    '> '
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 7
MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100095',
    -> 'arzena haqi muhammad',
    -> 'L',
    -> 'subang',
    -> '2005-11-27',
    -> 'sukamelang',
    -> '11-RPL-1',
    -> '89.33',
    -> '1');
Query OK, 1 row affected (0.057 sec)

MariaDB [sekolah]> UPDATE siswa SET
    -> kelas="11-RPL-2"
    -> WHERE
    -> nis="12100461";
Query OK, 1 row affected (0.119 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> SELECT * from siswa;
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
| nis      | nama                    | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai | jomblo |
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
| 12100095 | arzena haqi muhammad    | L    | subang    | 2005-11-27 | sukamelang | 11-RPL-1 | 89.33 |      1 |
| 12100461 | muhammad maruf hartanto | l    | subang    | 2005-06-07 | manyingsal | 11-RPL-2 |  99.9 |      1 |
| 21100018 | adnan maulana           | L    | subang    | 2005-08-17 | cigadung   | 11-RPL-2 | 81.32 |      1 |
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
3 rows in set (0.001 sec)

MariaDB [sekolah]> UPDATE siswa SET
    -> jk="l"
    -> WHERE
    -> nis="L";
Query OK, 0 rows affected (0.001 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [sekolah]> SELECT * from siswa;
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
| nis      | nama                    | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai | jomblo |
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
| 12100095 | arzena haqi muhammad    | L    | subang    | 2005-11-27 | sukamelang | 11-RPL-1 | 89.33 |      1 |
| 12100461 | muhammad maruf hartanto | l    | subang    | 2005-06-07 | manyingsal | 11-RPL-2 |  99.9 |      1 |
| 21100018 | adnan maulana           | L    | subang    | 2005-08-17 | cigadung   | 11-RPL-2 | 81.32 |      1 |
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
3 rows in set (0.001 sec)

MariaDB [sekolah]> UPDATE siswa SET
    -> jk="L"
    -> WHERE
    -> nis="12100461";
Query OK, 1 row affected (0.057 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> SELECT *FROM siswa;
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
| nis      | nama                    | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai | jomblo |
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
| 12100095 | arzena haqi muhammad    | L    | subang    | 2005-11-27 | sukamelang | 11-RPL-1 | 89.33 |      1 |
| 12100461 | muhammad maruf hartanto | L    | subang    | 2005-06-07 | manyingsal | 11-RPL-2 |  99.9 |      1 |
| 21100018 | adnan maulana           | L    | subang    | 2005-08-17 | cigadung   | 11-RPL-2 | 81.32 |      1 |
+----------+-------------------------+------+-----------+------------+------------+----------+-------+--------+
3 rows in set (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100707',
    -> 'satrio augistiawan',
    -> 'L',
    -> 'subang',
    -> '2005-08-4',
    -> 'ciloa',
    -> '11-RPL-2',
    -> '80.56',
    -> '0');
Query OK, 1 row affected (0.052 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '89.33',
    -> 12100272',
    '> ;
    '> "
    '> ;
    '> "'
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '',
;
"
;
"'' at line 3
MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100272',
    -> 'ferdinand maulana za fauzi',
    -> 'L',
    -> 'subang',
    -> '2006-08-16',
    -> 'kalijati',
    -> '11-RPL-2',
    -> '88.45',
    -> '0');
Query OK, 1 row affected (0.041 sec)

MariaDB [sekolah]> SELECT *FROM siswa;
+----------+----------------------------+------+-----------+------------+------------+----------+-------+--------+
| nis      | nama                       | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai | jomblo |
+----------+----------------------------+------+-----------+------------+------------+----------+-------+--------+
| 12100095 | arzena haqi muhammad       | L    | subang    | 2005-11-27 | sukamelang | 11-RPL-1 | 89.33 |      1 |
| 12100272 | ferdinand maulana za fauzi | L    | subang    | 2006-08-16 | kalijati   | 11-RPL-2 | 88.45 |      0 |
| 12100461 | muhammad maruf hartanto    | L    | subang    | 2005-06-07 | manyingsal | 11-RPL-2 |  99.9 |      1 |
| 12100707 | satrio augistiawan         | L    | subang    | 2005-08-04 | ciloa      | 11-RPL-2 | 80.56 |      0 |
| 21100018 | adnan maulana              | L    | subang    | 2005-08-17 | cigadung   | 11-RPL-2 | 81.32 |      1 |
+----------+----------------------------+------+-----------+------------+------------+----------+-------+--------+
5 rows in set (0.001 sec)

MariaDB [sekolah]>    