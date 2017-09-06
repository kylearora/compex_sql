Kyles-MacBook-Air:self_managed_robots kylearora$ psql todolist
psql (9.6.5)
Type "help" for help.

todolist=# \dt
         List of relations
 Schema | Name  | Type  |   Owner
--------+-------+-------+-----------
 public | todos | table | kylearora
(1 row)

todolist=# select * from todos;
 id |         title         |                            details                            | priority |         created_at         | completed_at
----+-----------------------+---------------------------------------------------------------+----------+----------------------------+--------------
  2 | Renew Energy Contract | Call up Infinite and Renew Energy Contract                    |        4 | 2017-09-05 14:43:24.054196 |
  4 | Catch up on TIY       | Finish old projects that were delayed due to Hurricane Harvey |        3 | 2017-09-05 14:50:27.92945  |
  5 | Ship out Sold Itmes   | Ship out items that you sold on eBay                          |        5 | 2017-09-05 14:52:12.712375 |
(3 rows)

todolist=# INSERT INTO todos (title,details,priority,create_at) VALUES('Advanced Postgresql', 'Keep learning Postgresql through the terminal', 1, current_timestamp);
ERROR:  column "create_at" of relation "todos" does not exist
LINE 1: INSERT INTO todos (title,details,priority,create_at) VALUES(...
                                                  ^
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Advanced Postgresql', 'Keep learning Postgresql through the terminal', 1, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Finish Unpacking', 'Finish unpacking from the move', 3, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Dog Grooming', 'Get dog groomed at the pet groomer', 3, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Mom's Taxes', 'Get Mom's Taxes Filed', 1, current_timestamp);
ERROR:  syntax error at or near "s"
LINE 1: ...s (title,details,priority,created_at) VALUES('Mom's Taxes', ...
                                                             ^
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Moms Taxes', 'Get Moms Taxes Filed', 1, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Catch up on Gotham', 'Finish Season 3 of Gotham', 5, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Catch up on Silicon Valley', 'Finish Season 2 of Silicon Valley', 5, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Catch up on Rick and Morty', 'Catch up on Season 3 of Rick and Morty', 5, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Pay CC Bills', 'Pay current month credit card bills', 1, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Pay HOA', 'Pay current month HOA', 1, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Drycleaning', 'Get clotes drycleaned for Wedding this weekend', 2, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Clean up at home', 'mop the floors at home', 3, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Fix Watch', 'Get watch fixed at Galleria', 4, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Start looking for jobs', 'Start looking for different types of dev jobs that may be available', 3, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Update Resume', 'Update Resumts to reflect new skills', 3, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Follow up with Steve', 'Follow up with Steve regarding Dallas', 2, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Lake Tahoe', 'Sort out lake Tahoe details', 4, current_timestamp);
INSERT 0 1
todolist=# INSERT INTO todos (title,details,priority,created_at) VALUES('Create Marriot Account', 'Create Marriot Account', 4, current_timestamp);
INSERT 0 1
todolist=# select * from todos;
 id |           title            |                               details                               | priority |         created_at         | completed_at
----+----------------------------+---------------------------------------------------------------------+----------+----------------------------+--------------
  2 | Renew Energy Contract      | Call up Infinite and Renew Energy Contract                          |        4 | 2017-09-05 14:43:24.054196 |
  4 | Catch up on TIY            | Finish old projects that were delayed due to Hurricane Harvey       |        3 | 2017-09-05 14:50:27.92945  |
  5 | Ship out Sold Itmes        | Ship out items that you sold on eBay                                |        5 | 2017-09-05 14:52:12.712375 |
  6 | Advanced Postgresql        | Keep learning Postgresql through the terminal                       |        1 | 2017-09-06 10:57:25.913603 |
  7 | Finish Unpacking           | Finish unpacking from the move                                      |        3 | 2017-09-06 10:59:10.731318 |
  8 | Dog Grooming               | Get dog groomed at the pet groomer                                  |        3 | 2017-09-06 10:59:48.786194 |
  9 | Moms Taxes                 | Get Moms Taxes Filed                                                |        1 | 2017-09-06 11:02:39.203054 |
 10 | Catch up on Gotham         | Finish Season 3 of Gotham                                           |        5 | 2017-09-06 11:03:42.791653 |
 11 | Catch up on Silicon Valley | Finish Season 2 of Silicon Valley                                   |        5 | 2017-09-06 11:04:20.995195 |
 12 | Catch up on Rick and Morty | Catch up on Season 3 of Rick and Morty                              |        5 | 2017-09-06 11:04:52.435427 |
 13 | Pay CC Bills               | Pay current month credit card bills                                 |        1 | 2017-09-06 11:05:27.985621 |
 14 | Pay HOA                    | Pay current month HOA                                               |        1 | 2017-09-06 11:05:45.709891 |
 15 | Drycleaning                | Get clotes drycleaned for Wedding this weekend                      |        2 | 2017-09-06 11:06:14.00213  |
 16 | Clean up at home           | mop the floors at home                                              |        3 | 2017-09-06 11:06:59.96616  |
 17 | Fix Watch                  | Get watch fixed at Galleria                                         |        4 | 2017-09-06 11:07:29.438638 |
 18 | Start looking for jobs     | Start looking for different types of dev jobs that may be available |        3 | 2017-09-06 11:08:20.503435 |
 19 | Update Resume              | Update Resumts to reflect new skills                                |        3 | 2017-09-06 11:09:34.574544 |
 20 | Follow up with Steve       | Follow up with Steve regarding Dallas                               |        2 | 2017-09-06 11:10:21.620775 |
 21 | Lake Tahoe                 | Sort out lake Tahoe details                                         |        4 | 2017-09-06 11:11:03.686876 |
 22 | Create Marriot Account     | Create Marriot Account                                              |        4 | 2017-09-06 11:11:57.952658 |
(20 rows)

todolist=# INSERT INTO todos (title,details,priority,created_at, completed_at) VALUES('Create 20 todos in terminal', 'Create 20 todos in terminal for Daily Project', 1, current_timestamp, current_timestamp);
INSERT 0 1
todolist=# select * from todos;
 id |            title            |                               details                               | priority |         created_at         |       completed_at
----+-----------------------------+---------------------------------------------------------------------+----------+----------------------------+---------------------------
  2 | Renew Energy Contract       | Call up Infinite and Renew Energy Contract                          |        4 | 2017-09-05 14:43:24.054196 |
  4 | Catch up on TIY             | Finish old projects that were delayed due to Hurricane Harvey       |        3 | 2017-09-05 14:50:27.92945  |
  5 | Ship out Sold Itmes         | Ship out items that you sold on eBay                                |        5 | 2017-09-05 14:52:12.712375 |
  6 | Advanced Postgresql         | Keep learning Postgresql through the terminal                       |        1 | 2017-09-06 10:57:25.913603 |
  7 | Finish Unpacking            | Finish unpacking from the move                                      |        3 | 2017-09-06 10:59:10.731318 |
  8 | Dog Grooming                | Get dog groomed at the pet groomer                                  |        3 | 2017-09-06 10:59:48.786194 |
  9 | Moms Taxes                  | Get Moms Taxes Filed                                                |        1 | 2017-09-06 11:02:39.203054 |
 10 | Catch up on Gotham          | Finish Season 3 of Gotham                                           |        5 | 2017-09-06 11:03:42.791653 |
 11 | Catch up on Silicon Valley  | Finish Season 2 of Silicon Valley                                   |        5 | 2017-09-06 11:04:20.995195 |
 12 | Catch up on Rick and Morty  | Catch up on Season 3 of Rick and Morty                              |        5 | 2017-09-06 11:04:52.435427 |
 13 | Pay CC Bills                | Pay current month credit card bills                                 |        1 | 2017-09-06 11:05:27.985621 |
 14 | Pay HOA                     | Pay current month HOA                                               |        1 | 2017-09-06 11:05:45.709891 |
 15 | Drycleaning                 | Get clotes drycleaned for Wedding this weekend                      |        2 | 2017-09-06 11:06:14.00213  |
 16 | Clean up at home            | mop the floors at home                                              |        3 | 2017-09-06 11:06:59.96616  |
 17 | Fix Watch                   | Get watch fixed at Galleria                                         |        4 | 2017-09-06 11:07:29.438638 |
 18 | Start looking for jobs      | Start looking for different types of dev jobs that may be available |        3 | 2017-09-06 11:08:20.503435 |
 19 | Update Resume               | Update Resumts to reflect new skills                                |        3 | 2017-09-06 11:09:34.574544 |
 20 | Follow up with Steve        | Follow up with Steve regarding Dallas                               |        2 | 2017-09-06 11:10:21.620775 |
 21 | Lake Tahoe                  | Sort out lake Tahoe details                                         |        4 | 2017-09-06 11:11:03.686876 |
 22 | Create Marriot Account      | Create Marriot Account                                              |        4 | 2017-09-06 11:11:57.952658 |
 23 | Create 20 todos in terminal | Create 20 todos in terminal for Daily Project                       |        1 | 2017-09-06 11:13:44.48852  | 2017-09-06 11:13:44.48852
(21 rows)

todolist=# SELECT * FROM todos WHERE priority = 3;
 id |         title          |                               details                               | priority |         created_at         | completed_at
----+------------------------+---------------------------------------------------------------------+----------+----------------------------+--------------
  4 | Catch up on TIY        | Finish old projects that were delayed due to Hurricane Harvey       |        3 | 2017-09-05 14:50:27.92945  |
  7 | Finish Unpacking       | Finish unpacking from the move                                      |        3 | 2017-09-06 10:59:10.731318 |
  8 | Dog Grooming           | Get dog groomed at the pet groomer                                  |        3 | 2017-09-06 10:59:48.786194 |
 16 | Clean up at home       | mop the floors at home                                              |        3 | 2017-09-06 11:06:59.96616  |
 18 | Start looking for jobs | Start looking for different types of dev jobs that may be available |        3 | 2017-09-06 11:08:20.503435 |
 19 | Update Resume          | Update Resumts to reflect new skills                                |        3 | 2017-09-06 11:09:34.574544 |
(6 rows)

todolist=# SELECT * FROM todos WHERE priority = 3 AND completed_at IS NULL;
 id |         title          |                               details                               | priority |         created_at         | completed_at
----+------------------------+---------------------------------------------------------------------+----------+----------------------------+--------------
  4 | Catch up on TIY        | Finish old projects that were delayed due to Hurricane Harvey       |        3 | 2017-09-05 14:50:27.92945  |
  7 | Finish Unpacking       | Finish unpacking from the move                                      |        3 | 2017-09-06 10:59:10.731318 |
  8 | Dog Grooming           | Get dog groomed at the pet groomer                                  |        3 | 2017-09-06 10:59:48.786194 |
 16 | Clean up at home       | mop the floors at home                                              |        3 | 2017-09-06 11:06:59.96616  |
 18 | Start looking for jobs | Start looking for different types of dev jobs that may be available |        3 | 2017-09-06 11:08:20.503435 |
 19 | Update Resume          | Update Resumts to reflect new skills                                |        3 | 2017-09-06 11:09:34.574544 |
(6 rows)


todolist=# SELECT * FROM todos WHERE completed_at is NULL; GROUP BY priority;
 id |           title            |                               details                               | priority |         created_at         | completed_at
----+----------------------------+---------------------------------------------------------------------+----------+----------------------------+--------------
  2 | Renew Energy Contract      | Call up Infinite and Renew Energy Contract                          |        4 | 2017-09-05 14:43:24.054196 |
  4 | Catch up on TIY            | Finish old projects that were delayed due to Hurricane Harvey       |        3 | 2017-09-05 14:50:27.92945  |
  5 | Ship out Sold Itmes        | Ship out items that you sold on eBay                                |        5 | 2017-09-05 14:52:12.712375 |
  6 | Advanced Postgresql        | Keep learning Postgresql through the terminal                       |        1 | 2017-09-06 10:57:25.913603 |
  7 | Finish Unpacking           | Finish unpacking from the move                                      |        3 | 2017-09-06 10:59:10.731318 |
  8 | Dog Grooming               | Get dog groomed at the pet groomer                                  |        3 | 2017-09-06 10:59:48.786194 |
  9 | Moms Taxes                 | Get Moms Taxes Filed                                                |        1 | 2017-09-06 11:02:39.203054 |
 10 | Catch up on Gotham         | Finish Season 3 of Gotham                                           |        5 | 2017-09-06 11:03:42.791653 |
 11 | Catch up on Silicon Valley | Finish Season 2 of Silicon Valley                                   |        5 | 2017-09-06 11:04:20.995195 |
 12 | Catch up on Rick and Morty | Catch up on Season 3 of Rick and Morty                              |        5 | 2017-09-06 11:04:52.435427 |
 13 | Pay CC Bills               | Pay current month credit card bills                                 |        1 | 2017-09-06 11:05:27.985621 |
 14 | Pay HOA                    | Pay current month HOA                                               |        1 | 2017-09-06 11:05:45.709891 |
 15 | Drycleaning                | Get clotes drycleaned for Wedding this weekend                      |        2 | 2017-09-06 11:06:14.00213  |
 16 | Clean up at home           | mop the floors at home                                              |        3 | 2017-09-06 11:06:59.96616  |
 17 | Fix Watch                  | Get watch fixed at Galleria                                         |        4 | 2017-09-06 11:07:29.438638 |
 18 | Start looking for jobs     | Start looking for different types of dev jobs that may be available |        3 | 2017-09-06 11:08:20.503435 |
 19 | Update Resume              | Update Resumts to reflect new skills                                |        3 | 2017-09-06 11:09:34.574544 |
 20 | Follow up with Steve       | Follow up with Steve regarding Dallas                               |        2 | 2017-09-06 11:10:21.620775 |
 21 | Lake Tahoe                 | Sort out lake Tahoe details                                         |        4 | 2017-09-06 11:11:03.686876 |
 22 | Create Marriot Account     | Create Marriot Account                                              |        4 | 2017-09-06 11:11:57.952658 |
(20 rows)

todolist=# SELECT * FROM todos WHERE completed_at is NULL ORDER BY priority;
 id |           title            |                               details                               | priority |         created_at         | completed_at
----+----------------------------+---------------------------------------------------------------------+----------+----------------------------+--------------
 14 | Pay HOA                    | Pay current month HOA                                               |        1 | 2017-09-06 11:05:45.709891 |
  6 | Advanced Postgresql        | Keep learning Postgresql through the terminal                       |        1 | 2017-09-06 10:57:25.913603 |
  9 | Moms Taxes                 | Get Moms Taxes Filed                                                |        1 | 2017-09-06 11:02:39.203054 |
 13 | Pay CC Bills               | Pay current month credit card bills                                 |        1 | 2017-09-06 11:05:27.985621 |
 20 | Follow up with Steve       | Follow up with Steve regarding Dallas                               |        2 | 2017-09-06 11:10:21.620775 |
 15 | Drycleaning                | Get clotes drycleaned for Wedding this weekend                      |        2 | 2017-09-06 11:06:14.00213  |
 19 | Update Resume              | Update Resumts to reflect new skills                                |        3 | 2017-09-06 11:09:34.574544 |
 18 | Start looking for jobs     | Start looking for different types of dev jobs that may be available |        3 | 2017-09-06 11:08:20.503435 |
  4 | Catch up on TIY            | Finish old projects that were delayed due to Hurricane Harvey       |        3 | 2017-09-05 14:50:27.92945  |
  7 | Finish Unpacking           | Finish unpacking from the move                                      |        3 | 2017-09-06 10:59:10.731318 |
 16 | Clean up at home           | mop the floors at home                                              |        3 | 2017-09-06 11:06:59.96616  |
  8 | Dog Grooming               | Get dog groomed at the pet groomer                                  |        3 | 2017-09-06 10:59:48.786194 |
 22 | Create Marriot Account     | Create Marriot Account                                              |        4 | 2017-09-06 11:11:57.952658 |
 17 | Fix Watch                  | Get watch fixed at Galleria                                         |        4 | 2017-09-06 11:07:29.438638 |
 21 | Lake Tahoe                 | Sort out lake Tahoe details                                         |        4 | 2017-09-06 11:11:03.686876 |
  2 | Renew Energy Contract      | Call up Infinite and Renew Energy Contract                          |        4 | 2017-09-05 14:43:24.054196 |
 10 | Catch up on Gotham         | Finish Season 3 of Gotham                                           |        5 | 2017-09-06 11:03:42.791653 |
 12 | Catch up on Rick and Morty | Catch up on Season 3 of Rick and Morty                              |        5 | 2017-09-06 11:04:52.435427 |
  5 | Ship out Sold Itmes        | Ship out items that you sold on eBay                                |        5 | 2017-09-05 14:52:12.712375 |
 11 | Catch up on Silicon Valley | Finish Season 2 of Silicon Valley                                   |        5 | 2017-09-06 11:04:20.995195 |
(20 rows)

todolist=# SELECT * FROM todos WHERE created_at BETWEEN '2017-08-06' AND '2017-09-07' AND completed_at IS NULL ORDER BY priority;
 id |           title            |                               details                               | priority |         created_at         | completed_at
----+----------------------------+---------------------------------------------------------------------+----------+----------------------------+--------------
 14 | Pay HOA                    | Pay current month HOA                                               |        1 | 2017-09-06 11:05:45.709891 |
  6 | Advanced Postgresql        | Keep learning Postgresql through the terminal                       |        1 | 2017-09-06 10:57:25.913603 |
  9 | Moms Taxes                 | Get Moms Taxes Filed                                                |        1 | 2017-09-06 11:02:39.203054 |
 13 | Pay CC Bills               | Pay current month credit card bills                                 |        1 | 2017-09-06 11:05:27.985621 |
 20 | Follow up with Steve       | Follow up with Steve regarding Dallas                               |        2 | 2017-09-06 11:10:21.620775 |
 15 | Drycleaning                | Get clotes drycleaned for Wedding this weekend                      |        2 | 2017-09-06 11:06:14.00213  |
 19 | Update Resume              | Update Resumts to reflect new skills                                |        3 | 2017-09-06 11:09:34.574544 |
 18 | Start looking for jobs     | Start looking for different types of dev jobs that may be available |        3 | 2017-09-06 11:08:20.503435 |
  4 | Catch up on TIY            | Finish old projects that were delayed due to Hurricane Harvey       |        3 | 2017-09-05 14:50:27.92945  |
  7 | Finish Unpacking           | Finish unpacking from the move                                      |        3 | 2017-09-06 10:59:10.731318 |
 16 | Clean up at home           | mop the floors at home                                              |        3 | 2017-09-06 11:06:59.96616  |
  8 | Dog Grooming               | Get dog groomed at the pet groomer                                  |        3 | 2017-09-06 10:59:48.786194 |
 22 | Create Marriot Account     | Create Marriot Account                                              |        4 | 2017-09-06 11:11:57.952658 |
 17 | Fix Watch                  | Get watch fixed at Galleria                                         |        4 | 2017-09-06 11:07:29.438638 |
 21 | Lake Tahoe                 | Sort out lake Tahoe details                                         |        4 | 2017-09-06 11:11:03.686876 |
  2 | Renew Energy Contract      | Call up Infinite and Renew Energy Contract                          |        4 | 2017-09-05 14:43:24.054196 |
 10 | Catch up on Gotham         | Finish Season 3 of Gotham                                           |        5 | 2017-09-06 11:03:42.791653 |
 12 | Catch up on Rick and Morty | Catch up on Season 3 of Rick and Morty                              |        5 | 2017-09-06 11:04:52.435427 |
  5 | Ship out Sold Itmes        | Ship out items that you sold on eBay                                |        5 | 2017-09-05 14:52:12.712375 |
 11 | Catch up on Silicon Valley | Finish Season 2 of Silicon Valley                                   |        5 | 2017-09-06 11:04:20.995195 |
(20 rows)

todolist=# SELECT * FROM todos WHERE priority = 1 ORDER BY created_at LIMIT 1;;
 id |        title        |                    details                    | priority |         created_at         | completed_at
----+---------------------+-----------------------------------------------+----------+----------------------------+--------------
  6 | Advanced Postgresql | Keep learning Postgresql through the terminal |        1 | 2017-09-06 10:57:25.913603 |
(1 row)

todolist=# ^Z
[5]+  Stopped                 psql todolist
Kyles-MacBook-Air:self_managed_robots kylearora$
