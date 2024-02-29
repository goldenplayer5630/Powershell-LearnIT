### Assignment: **File Organizer Script**
Difficulty: Advanced
**Objective:**
Create a PowerShell script that organizes files in a specified directory based on their file extensions. This assignment will cover basic file and directory manipulation, user input, and conditional statements.

**Requirements:**

1. **User Input:**
    - Prompt the user to enter the path of the directory they want to organize.

2. **File Organization:**
    - Write a function called `Organize-Files` that takes the path of the directory as a parameter.
    - Inside the function, retrieve a list of all files in the specified directory.
    - Iterate through each file and move it to a corresponding subdirectory based on its file extension (e.g., create subdirectories like "Images", "Documents", "Videos", etc.).
    - If a subdirectory for a specific file extension doesn't exist, create it.

3. **Display Results:**
    - After organizing the files, display a summary of the number of files moved to each subdirectory.

4. **Error Handling:**
    - Implement error handling to check if the specified directory exists. If not, display an appropriate error message and prompt the user to enter a valid path.

**Example Output:**
```powershell
Enter the path of the directory to organize: C:\Users\UserName\Downloads

Organizing files in C:\Users\UserName\Downloads...

Moved 15 files to the "Images" folder.
Moved 8 files to the "Documents" folder.
Moved 5 files to the "Videos" folder.
...

File organization complete!
```

**Extra Challenge (Optional):**
- Implement a feature to handle duplicate file names. If a file with the same name already exists in the destination directory, rename the file to avoid overwriting.

**Submission:**
Submit your well-commented PowerShell script along with an explanation of how the script works and any additional features you implemented. This assignment is designed to reinforce basic PowerShell concepts and problem-solving skills.