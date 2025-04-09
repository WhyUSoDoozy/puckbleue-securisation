#!/bin/bash

SOURCE_DIR="/var/www"
BACKUP_DIR="/var/backup"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/www_backup_$TIMESTAMP.tar.gz"

-mkdir -p "$BACKUP_DIR"

-tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

-echo "Backup of $SOURCE_DIR completed: $BACKUP_FILE"
