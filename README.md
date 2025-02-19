# datafun-05-sql
Module 5 Project  

## Start a New Project
1. Create repo in GitHub with a README.md.
2. Name repo datafun-05-sql.
3. Clone repo down to Projects folder.
    ```  
    git clone (paste project URL)
    ```  
4. Open new repository in VS Code.

## Add/Update Critical Files
#### Add .gitignore
1. Add new file in datafun-05-sql titled .gitignore.
2. Copy example .gitignore from course GitHub.
3. Paste into project .gitignore file.

#### Add requirements.txt
1. Add new file in datafun-05-sql titled requirements.txt.
2. Copy example requirements.txt from course GitHub.
3. Paste into project requirements.txt file.

#### Update README.md
* Edit and customize README.md for overview of project and instructions for running it.

#### Git add-commit-push
* Push changes to GitHub after each step as project progresses.
    ```
    git add .
    git commit -m "Add meaningful comment."
    git push
    ```

## Set Up Virtual Environment
1. Create virtual environment.
    ```
    py -m venv .venv
    ```
2. Activate virtual environment.
    ```
    .venv\Scripts\activate
    ```
3. Install dependencies with requirements.txt.
    ```
    py -m pip install --upgrade pip setuptools wheel
    py -m pip install --upgrade -r requirements.txt
    ```
4. Ctrl + Shift + P
5. Search for Python: Select Interpreter.
6. Select local .venv.

## Schema Design and Database Initialization
 * Created sql_create folder and added SQL scripts to three .sql files.
    * 01_drop_tables.sql - dropped tables to restart.
    * 02_create_tables.sql - created database schema to create author and books tables.
    * 03_insert_records.sql - inserted records into author and books tables.

 * Created Python script to run all .sql files in sql_create folder.
    ```
    py db01_setup.py
    ```

## Cleaning and Feature Engineering
- Implemented SQL statements and queries to perform additional operations and use Python to execute SQL statements. 
    * Created sql_features folder and added SQL script to two .sql files.
        - update_records.sql - added genre column to books, added additional records, updated each record with the genre of each book, and corrected an author ID. 
        - deleted_records.sql - script to delete a duplicate record, deleted author George Orwell and his book 1984.

    * Created Python script to run all .sql files in sql_features folder.
    ```
    py db02_features.py
    ```

## Perform Aggregations and Queries
- Implement SQL statements and queries to perform aggregations and queries.
    * Created sql_queries folder and added script to five .sql files.
        - query_aggregation.sql - used COUNT, SUM, MIN, MAX. 
        - query_filter.sql - used WHERE to filter data based on conditions.
        - query_sorting.sql - used ORDER BY to sort data.
        - query_group_by.sql - used GROUP BY clause.
        - query_join.sql - used INNER JOIN operation.
    
    * Created Python script to run all .sql files in sql_queries folder.
    ```
    py db03_queries.py
    ```
    