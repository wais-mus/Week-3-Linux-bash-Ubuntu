#!/bin/bash
# Monitor CPU and memory usage

echo "System Monitor Report for $(hostname)"
echo "-----------------------------------"
echo "Date: $(date)"
echo ""
echo "CPU Load:"
uptime
echo ""
echo "Memory Usage:"
free -h
echo ""
echo "Top 5 Processes by Memory:"
ps aux --sort=-%mem | head -n 6
