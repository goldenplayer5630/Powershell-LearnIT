### Advanced PowerShell Assignment: **Automated System Monitoring and Reporting**
Difficulty: Expert
**Objective:**
Create a PowerShell script that performs advanced system monitoring and generates a detailed report. This assignment involves dealing with system metrics, event logs, and generating comprehensive reports.

**Requirements:**

1. **System Monitoring:**
    - Implement functions to collect the following system metrics:
        - CPU Usage
        - Memory Usage
        - Disk Space Usage
        - Network Traffic

2. **Event Log Analysis:**
    - Analyze critical events from the Windows Event Log, such as system errors, warnings, and application crashes.

3. **Generate a Detailed Report:**
    - Aggregate the collected data and generate a comprehensive report that includes:
        - System metrics over time.
        - Top processes consuming CPU and memory.
        - Critical events and their details.

4. **Automation:**
    - Schedule the script to run at regular intervals using the Task Scheduler.

5. **Email Notification:**
    - If the script identifies critical events or resource usage exceeding a defined threshold, send an email notification with a summary of the issues.

**Example Output:**
- The script generates a detailed HTML report saved to a specified location.
- An email is sent if critical events or resource usage issues are detected.

**Extra Challenge (Optional):**
- Implement a real-time dashboard using PowerShell and frameworks like WPF or XAML for immediate visual insights into system health.

**Submission:**
Submit your advanced PowerShell script along with a detailed explanation of the implemented features, the structure of the HTML report, and how you handled potential errors or performance considerations. This assignment is designed to challenge your skills in system monitoring, data analysis, and automation with PowerShell.