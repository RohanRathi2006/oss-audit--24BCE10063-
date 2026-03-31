# oss-audit--24BCE10063-
Student Name: Rohan Rathi

Roll Number: 24BCE10063 

Course: Open Source Software


Chosen Software: Mozilla Firefox 

About This Repo
This repository contains the practical shell scripting part of my Open Source Audit capstone project. For my project, I chose to audit Mozilla Firefox because it's a great example of a non-profit organization fighting to keep the internet open and accessible for everyone.

This repo includes 5 shell scripts that demonstrate basic Linux automation and system administration concepts like loops, conditional statements, and file handling.

Dependencies Required 

To run these scripts properly, you will need:

A working Linux environment (I tested all of these on Ubuntu).

The bash shell (which comes by default on almost all Linux distros).

Standard Linux command-line utilities (grep, awk, du, dpkg, cut).

Mozilla Firefox should be installed on the system (so that Script 2 and Script 3 can actually detect it and check its config folders).

Descriptions and Step-by-Step Instructions 

Before running any script, open your terminal, navigate to the folder where you saved these files, and give them execute permissions by running:

Bash
chmod +x *.sh

Script 1: System Identity Report (script1.sh)

Description: This script acts as a welcome screen for the audit. It fetches and prints basic system information like the current Linux kernel version, uptime, logged-in user, and the OS distribution. It uses variables and command substitution to get real-time data.
How to run:

Bash
./script1.sh

Script 2: FOSS Package Inspector (script2.sh)

Description: This script checks if my chosen software (Firefox) is installed on the system. It uses the dpkg command (since I'm on Ubuntu) to fetch the package details and filters the version and description. It also uses a case statement to print a short philosophy note about the software.
How to run:

Bash
./script2.sh

Script 3: Disk and Permission Auditor (script3.sh)

Description: This script uses a for loop to go through a list of important system directories (like /etc, /var/log, /home) and prints out their disk usage and permissions. At the bottom, it specifically targets the local Firefox profile directory (~/.mozilla/firefox) to show how user data is secured in Linux.
How to run:

Bash
./script3.sh

Script 4: Log File Analyzer (script4.sh)

Description: This script is designed to read a log file line by line using a while loop. It searches for a specific keyword (like "error" or "warning") and counts how many times it appears. Finally, it prints the last 5 matching lines so you can see the recent issues.
How to run:
Because this script takes command-line arguments, you have to pass the filename and the keyword when you run it.

Bash
./script4.sh /var/log/syslog error
(Note: If you get a permission denied error for system logs, you can create a simple test.log file yourself and run ./script4.sh test.log error instead).

Script 5: The Open Source Manifesto Generator (script5.sh)

Description: This is an interactive script. It will prompt you with three questions about your views on open source and freedom. After you type your answers, it combines them into a short paragraph and saves it as a .txt file using output redirection (>).
How to run:

Bash
./script5.sh
(Just type your answers in the terminal when it asks. Once it finishes, it will create a text file in the same folder with your manifesto).
