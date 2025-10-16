# 💻 Bash Scripting Cheat Sheet  
**Week 4: Bash Automation & Scripting**

---

## 🧠 Overview
This cheat sheet covers essential Bash scripting concepts — from basic commands and variables to loops, conditionals, and automation examples.  
Use this as your quick reference when writing shell scripts or automating Linux tasks.

---

## ⚙️ Script Setup

| Concept | Description | Example |
|----------|--------------|----------|
| **Shebang** | Tells the system which interpreter to use | `#!/bin/bash` |
| **Make script executable** | Gives permission to run | `chmod +x script.sh` |
| **Run a script** | Executes the file | `./script.sh` |

---

## 💬 Basic Commands

| Command | Description | Example |
|----------|--------------|----------|
| `echo` | Prints text to screen | `echo "Hello World"` |
| `read` | Takes user input | `read name` |
| `pwd` | Show current directory | `pwd` |
| `ls -l` | List files in long format | `ls -l` |
| `whoami` | Show current user | `whoami` |
| `date` | Show date and time | `date` |

---

## 🧩 Variables

| Concept | Description | Example |
|----------|--------------|----------|
| **Create variable** | Assign a value | `name="Wais"` |
| **Use variable** | Reference it with `$` | `echo "Hello $name"` |
| **Read-only variable** | Prevent modification | `readonly course="Linux"` |
| **Environment variable** | Available system-wide | `export PATH=$PATH:/scripts` |

---

## 🔀 Conditionals

### If Statements
```bash```
if [ -f "/etc/passwd" ]; then
  echo "File exists"
else
  echo "File not found"
fi
Numeric Comparison
Operator	Meaning
-eq	equal to
-ne	not equal to
-gt	greater than
-lt	less than
-ge	greater or equal
-le	less or equal

Example:

bash
Copy code
if [ $age -ge 18 ]; then
  echo "Adult"
else
  echo "Minor"
fi
String Comparison
bash
Copy code
if [ "$name" = "wais" ]; then
  echo "Match found"
fi
🔁 Loops
For Loop
bash
Copy code
for i in {1..5}; do
  echo "Count: $i"
done
While Loop
bash
Copy code
count=1
while [ $count -le 5 ]; do
  echo "Number: $count"
  ((count++))
done
Until Loop
bash
Copy code
x=1
until [ $x -gt 3 ]; do
  echo "Loop $x"
  ((x++))
done
🧰 Functions
bash
Copy code
greet_user() {
  echo "Hello, $1!"
}

greet_user "Wais"
➡ $1 is the first argument passed to the function.

🗂️ File Operations
Command	Description	Example
mkdir backup	Create directory	mkdir logs
cp file.txt backup/	Copy file	cp notes.txt /tmp/
rm -rf folder	Delete folder recursively	rm -rf temp
find /home -name "*.log"	Find log files	find /var -name "*.log"
grep "error" file.log	Search text in file	grep "failed" /var/log/syslog

📦 Input & Output Redirection
Symbol	Description	Example
>	Redirect output (overwrite)	echo "test" > file.txt
>>	Append output to file	echo "add this" >> file.txt
<	Use file as input	sort < file.txt
`	`	Pipe output to another command

📜 Useful Script Examples
1️⃣ Disk Usage Monitor
bash
Copy code
#!/bin/bash
THRESHOLD=80
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Warning: Disk usage above ${THRESHOLD}%!"
else
  echo "Disk usage is normal (${USAGE}%)."
fi
2️⃣ Log Cleanup Script
bash
Copy code
#!/bin/bash
find /var/log -name "*.log" -type f -mtime +7 -exec rm {} \;
echo "Old logs deleted successfully."
3️⃣ Backup Script
bash
Copy code
#!/bin/bash
SRC="/home/wais/projects"
DEST="/home/wais/backup"
DATE=$(date +%Y-%m-%d)

mkdir -p "$DEST/$DATE"
cp -r "$SRC" "$DEST/$DATE"
echo "Backup completed for $DATE"
💡 Tips
Use set -x inside scripts to debug (shows each command before running).

Always quote variables ("$var") to avoid word-splitting bugs.

Use exit 0 for success, exit 1 for failure.

Add comments # generously to explain logic.

Always test scripts on dummy files first before running on real data.
