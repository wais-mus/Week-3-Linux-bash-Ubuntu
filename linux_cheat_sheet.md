# 🐧 Linux Command Cheat Sheet  
**Week 3: Linux & Ubuntu Basics**

---

## 🧠 Overview
This cheat sheet covers the most common Linux commands you’ll use for system navigation, file management, permissions, process control, and networking. Each command includes what it does and an example to help you remember how to use it.

---

## 📁 File & Directory Management

| Command | Meaning | Example |
|----------|----------|----------|
| `pwd` | Print current working directory | `pwd` → `/home/wais` |
| `ls -la` | List all files and folders (including hidden) | `ls -la /etc` |
| `cd /path/to/folder` | Change directory | `cd /var/log` |
| `mkdir -p folder/subfolder` | Create a new directory (and parents if missing) | `mkdir -p projects/week3` |
| `rmdir folder` | Remove an empty directory | `rmdir old_backup` |
| `rm -rf folder` | Force delete a directory and its contents | `rm -rf temp_files` |
| `cp source destination` | Copy files or folders | `cp file.txt /tmp/` |
| `mv oldname newname` | Move or rename a file | `mv notes.txt archive.txt` |
| `touch file.txt` | Create a new empty file | `touch newscript.sh` |
| `cat file.txt` | Display file contents | `cat /etc/hostname` |
| `less file.txt` | Scroll through a file one page at a time | `less syslog` |
| `head -n 10 file.txt` | Show first 10 lines | `head -n 10 access.log` |
| `tail -f file.txt` | View live updates (logs) | `tail -f /var/log/syslog` |

---

## 🔐 Permissions & Ownership

| Command | Meaning | Example |
|----------|----------|----------|
| `chmod 755 file.sh` | Change permissions (owner can read/write/execute, others can read/execute) | `chmod 755 script.sh` |
| `chown user:group file` | Change file owner and group | `sudo chown wais:admins report.txt` |
| `sudo <command>` | Run command as administrator (root) | `sudo apt update` |
| `su - username` | Switch user | `su - root` |
| `whoami` | Show current logged-in user | `whoami` |
| `groups` | Show group memberships | `groups wais` |

---

## ⚙️ System Management

| Command | Meaning | Example |
|----------|----------|----------|
| `date` | Show current date/time | `date` |
| `uptime` | Show how long the system has been running | `uptime` |
| `df -h` | Display disk usage in human-readable format | `df -h` |
| `du -sh folder` | Show folder size | `du -sh /var/log` |
| `free -h` | Display memory usage | `free -h` |
| `top` | View running processes live | `top` |
| `ps aux` | Show all running processes | `ps aux | grep ssh` |
| `kill <PID>` | Terminate a process by PID | `kill 1324` |
| `history` | Show recent commands | `history | tail` |
| `clear` | Clear terminal screen | `clear` |

---

## 🌐 Networking

| Command | Meaning | Example |
|----------|----------|----------|
| `ip a` | Display all IP addresses and interfaces | `ip a` |
| `ping <host>` | Test network connection | `ping google.com` |
| `traceroute <host>` | Trace the route packets take | `traceroute 8.8.8.8` |
| `nslookup <domain>` | Get DNS info | `nslookup github.com` |
| `curl ifconfig.me` | Show your public IP address | `curl ifconfig.me` |
| `wget <url>` | Download file from the web | `wget https://example.com/file.zip` |
| `scp file user@host:/path` | Copy file securely to remote host | `scp backup.tar wais@192.168.1.20:/home/wais/` |
| `ssh user@host` | Connect to remote server | `ssh wais@10.0.0.5` |

---

## 🧰 Package Management (Ubuntu / Debian)

| Command | Meaning | Example |
|----------|----------|----------|
| `sudo apt update` | Update available package list | `sudo apt update` |
| `sudo apt upgrade` | Install updates for all packages | `sudo apt upgrade` |
| `sudo apt install <pkg>` | Install specific package | `sudo apt install htop` |
| `sudo apt remove <pkg>` | Remove package | `sudo apt remove nginx` |
| `sudo apt autoremove` | Clean up unused dependencies | `sudo apt autoremove` |

---

## 🔎 Searching & Finding

| Command | Meaning | Example |
|----------|----------|----------|
| `find /path -name "*.txt"` | Find all `.txt` files in a directory | `find /home -name "*.log"` |
| `grep "error" file.log` | Search for text in a file | `grep "failed" /var/log/syslog` |
| `grep -r "keyword" /path` | Search recursively | `grep -r "timeout" /etc/` |
| `locate filename` | Quickly find file by name (uses database) | `locate passwd` |
| `updatedb` | Refresh file index for `locate` | `sudo updatedb` |

---

## 💡 Tips

- Use `&&` to run multiple commands in sequence:
  ```bash
  sudo apt update && sudo apt upgrade -y
Use | (pipe) to send output from one command to another:

bash
Copy code
ps aux | grep nginx
Use > to overwrite output into a file, >> to append:

bash
Copy code
echo "Backup complete" >> log.txt
Use tab completion to save time typing paths and commands.
