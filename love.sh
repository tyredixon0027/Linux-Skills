#!/bin/bash

BACKUP_DIR="/opt/app/backups"
DATE=$(date +%F)

mkdir -p $BACKUP_DIR

tar -czf $BACKUP_DIR/app_backup_$DATE.tar.gz /opt/app

df -h > $BACKUP_DIR/disk_$DATE.txt
free -m > $BACKUP_DIR/memory_$DATE.txt
ps aux --sort=-%mem | head -10 > $BACKUP_DIR/top_processes_$DATE.txt

echo "System audit completed on $DATE"

