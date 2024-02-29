### Assignment: **System Information Reporter**
Difficulty: Beginner
**Objective:**
Create a PowerShell script that gathers and reports various system information from the user's computer. This assignment will cover the use of built-in cmdlets, string formatting, and presenting information to the user.

**Requirements:**

1. **System Information Gathering:**
   - Use PowerShell cmdlets like `Get-WmiObject` or `Get-CimInstance` to retrieve information about the computer system, such as operating system details, processor information, and memory details.

2. **Formatting and Presentation:**
   - Format the gathered information into a readable and organized report.
   - Utilize string formatting techniques to present the information in a clear and visually appealing manner.

3. **User Interaction:**
   - Ask the user if they would like to save the report to a file.
   - If the user chooses to save the report, prompt for a filename and save the report to that file. If not, display the report on the console.

4. **Error Handling:**
   - Implement error handling to gracefully handle situations where specific information cannot be retrieved.

**Example Output:**
```powershell
System Information Reporter

------------------------------------
Operating System: Windows 10
Processor: Intel Core i7-7700HQ
RAM: 16 GB
Storage: 500 GB SSD

Do you want to save this report to a file? (yes/no): yes
Enter the filename to save the report: SystemReport.txt

Report saved successfully to SystemReport.txt
```

**Extra Challenge (Optional):**
- Include additional system information, such as network details, installed software, or user account information.

**Submission:**
Submit your well-commented PowerShell script along with an explanation of how the script works. Discuss the challenges you faced and how you approached error handling. This assignment aims to provide practical experience in using PowerShell to gather and present system information.