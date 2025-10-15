Bash Scripts for DevOps Practice
This repo contains Bash scripts and Linux command-line exercises as part of my DevOps learning journey.

Week 3 Tasks
1. Learning commands
✔️ Commands Practiced
cd
ls -al
grep
chmod
ps aux
🛠 Scripts
backup.sh: Placeholder for automated backup
monitor.sh: Placeholder for system monitoring
command_practice.txt: Descriptions and examples of common Linux commands

🧰 2. Bash Scripting Basics (Estimated: 2 hrs)
📌 Learn:
What a bash script is, how to write and execute one
Bash variables, conditionals, and loops
🎥 Resource:
freeCodeCamp Linux Command Line Crash Course (YouTube)
🔧 Activity:
Write your first script: disk_report.sh
#!/bin/bash
echo "Disk Usage Report for $(hostname) on $(date)"
df -h
📝 Mini Task:
Save the script and make it executable:

bash
Copy code
chmod +x disk_report.sh
Run it:

bash
Copy code
./disk_report.sh
Add it to your Git repo.
🖥️ 3. Environment Setup (Estimated: 0.5–1 hr)
Choose One: Install Ubuntu in VirtualBox

Enable WSL (Windows Subsystem for Linux)

🔧 Activity: Verify your Linux shell is working

Practice navigating files and running bash scripts

🔨 4. Script Writing Project (Estimated: 1–2 hrs)
📁 Create a GitHub Repo: bash-scripts

Write 3–5 Useful Bash Scripts: Script Purpose backup.sh Back up a directory to a .tar.gz file monitor.sh Monitor CPU and memory usage disk_report.sh Report disk usage hello.sh Basic “Hello, $USER” script uptime_check.sh Log system uptime and user sessions

📦 Example – backup.sh: bash Copy code #!/bin/bash

Usage: ./backup.sh /path/to/dir
tar -czvf backup_$(date +%F).tar.gz $1

🧩 Deliverables:

✅ Push your bash-scripts repo to GitHub

✅ Include at least 3 working bash scripts

✅ Include a simple README.md that:

Lists the scripts

Shows how to run each

✍️ Optional Stretch Tasks: Create a cron job to run one of your scripts on a schedule

Use grep piped with ps to filter specific processes:

bash Copy code ps aux | grep ssh


# Bash Scripts Collection

This repository contains simple Bash scripts created for Week 3 of my Linux learning plan.

## 📜 Scripts

| Script | Description | How to Run |
|--------|--------------|------------|
| backup.sh | Backs up a directory to a .tar.gz file | `./backup.sh /path/to/dir` |
| monitor.sh | Displays system CPU and memory usage | `./monitor.sh` |
| disk_report.sh | Shows disk usage | `./disk_report.sh` |
| hello.sh | Prints a personalized greeting | `./hello.sh` |
| uptime_check.sh | Logs system uptime and active users | `./uptime_check.sh` |

## 🧠 Notes
Make scripts executable before running:
```bash
chmod +x scriptname.sh
