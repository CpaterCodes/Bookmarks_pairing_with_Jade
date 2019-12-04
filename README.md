# Bookmark

In this project we will build a bookmark manager where we can maintain a collection of bookmarks.

# Requirements

# User stories

As a User  
So I can keep track of interesting stuff  
I want to be able to see a list of bookmarks  

LIST | BOOKMARK
----- | --------
-add_bookmark | -@url / -@name / -@description


# SQL Database Instructions

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql

# Test Database Instructions

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE test_database;
3. Connect to the database using the pqsl command \c test_database;
4. Run only the **first** line of code in 01_create_bookmarks_table.sql;
5. When rspec tests are run, they will set up the necessary database contents.
