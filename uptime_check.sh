#!/bin/bash
# Log system uptime and users

LOGFILE="uptime_log.txt"
{
  echo "===== $(date) ====="
  uptime
  who
  echo ""
} >> "$LOGFILE"

echo "Uptime info saved to $LOGFILE"
