# datafun-05-sql
Module 5 Project  
*This project is in the initial stages and this README.md will be updated as progress is made.*

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
* Push changes to GitHub.
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