# Create a Python script that demonstrates the ability to create a database, define a schema, and insert records. Make it easy to re-run by dropping the tables first.

import sqlite3
import pandas as pd
import pathlib
from utils_logger import logger

# Define the database file in the current root project directory
db_file = pathlib.Path("project.sqlite3")

def create_database():
    """Function to create a database file"""
    try:
        # Drop the Tables if they exist
        with sqlite3.connect(db_file) as conn:
            sql_file = pathlib.Path("sql_create", "01_drop_tables.sql")
            with open(sql_file, "r") as file:
                sql_script = file.read()
            conn.executescript(sql_script)
            logger.info("Tables dropped successfully.")
    
    # Create the Tables
        with sqlite3.connect(db_file) as conn:
            sql_file = pathlib.Path("sql_create", "02_create_tables.sql")
            with open(sql_file, "r") as file:
                sql_script = file.read()
            conn.executescript(sql_script)
            logger.info("Tables created successfully.")
    except sqlite3.Error as e:
        logger.error(f"Database creation failed: {e}")

def insert_data():
    """Function to insert data from SQL files"""
    try:
        with sqlite3.connect(db_file) as conn:
            sql_file = pathlib.Path("sql_create", "03_insert_records.sql")
            with open(sql_file, "r") as file:
                sql_script = file.read()
            conn.executescript(sql_script)
            logger.info("Data inserted successfully.")
    except FileNotFoundError as e:
        logger.error(f"File not found: {e}")
    except sqlite3.Error as e:
        logger.error(f"Database error: {e}")

print("Database created successfully.")

def main():
    logger.info("Database operation started.")
    create_database()
    insert_data()
    logger.info("Database operation completed.")

if __name__ == "__main__":
    main()

#TO DO: go look at old utils example from project 3 on how to use the logger. Come back and replace print statements with logger statements. 