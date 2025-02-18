import sqlite3
import pathlib
import pandas as pd
from utils_logger import logger  # Import logger from utils_logger

# Define paths to database and SQL queries
db_file_path = pathlib.Path(__file__).parent.joinpath("project.sqlite3")  # Set path to the root folder
queries_folder = pathlib.Path("sql_queries")

# Function to execute a single SQL query and return the result as a DataFrame
def execute_sql_query(db_file_path, sql_query):
    try:
        with sqlite3.connect(db_file_path) as conn:
            # Execute query and return result as DataFrame
            df = pd.read_sql_query(sql_query, conn)
            
            # Log query success
            if df.empty:
                logger.warning("Query executed but no data returned.")
            else:
                logger.info("Query executed successfully.")
            
            return df
    except sqlite3.Error as e:
        logger.error(f"Error executing query: {e}")
        return None
    except Exception as e:
        logger.error(f"Unexpected error: {e}")
        return None

# Function to read SQL queries from files in the sql_queries folder
def execute_queries_from_files():
    # Loop through all .sql files in the sql_queries folder
    for query_file in queries_folder.glob("*.sql"):
        logger.info(f"Processing file: {query_file.name}")
        
        try:
            with open(query_file, "r") as file:
                queries = file.read().split(';')  # Split multiple queries if any in the file
                queries = [q.strip() for q in queries if q.strip()]  # Remove extra spaces

            # Execute each query in the file
            for query in queries:
                logger.info(f"Executing query: {query}")
                df = execute_sql_query(db_file_path, query)
                
                if df is not None:
                    logger.info(f"Query results:\n{df}\n")
                    
        except Exception as e:
            logger.error(f"Error processing file {query_file.name}: {e}")

def main():
    execute_queries_from_files()

if __name__ == "__main__":
    main()