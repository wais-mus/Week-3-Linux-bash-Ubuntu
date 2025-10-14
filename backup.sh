#!/bin/bash
# Usage: ./backup.sh /path/to/dir

if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/dir"
  exit 1
fi

DIR=$1
BACKUP_FILE="backup_$(date +%F_%H-%M-%S).tar.gz"

echo "Creating backup of $DIR..."
tar -czvf "$BACKUP_FILE" "$DIR"
echo "Backup saved as $BACKUP_FILE"
