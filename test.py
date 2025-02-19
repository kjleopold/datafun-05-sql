import sqlite3
import pathlib

# Define the path to the SQLite database file
db_file_path = pathlib.Path(__file__).parent.joinpath("project.sqlite3")

# Path to the SQL script file in the 'sql_create' folder
sql_file_path = pathlib.Path(__file__).parent.joinpath("sql_create", "03_insert_records.sql")

# Function to execute the SQL script
def execute_insert_queries(db_file_path, sql_file_path):
    try:
        # Open the SQL file and read its content
        with open(sql_file_path, 'r') as sql_file:
            sql_script = sql_file.read()

        # Modify SQL script to use INSERT OR IGNORE to avoid duplicates
        sql_script = sql_script.replace('INSERT INTO', 'INSERT OR IGNORE INTO')

        # Connect to the database
        with sqlite3.connect(db_file_path) as conn:
            cursor = conn.cursor()

            # Execute the SQL script
            cursor.executescript(sql_script)

            # Commit the transaction
            conn.commit()
            print("Data inserted successfully.")
    except sqlite3.Error as e:
        print(f"Error executing insert queries: {e}")
    except Exception as e:
        print(f"Unexpected error: {e}")

# Execute the insert queries
execute_insert_queries(db_file_path, sql_file_path)