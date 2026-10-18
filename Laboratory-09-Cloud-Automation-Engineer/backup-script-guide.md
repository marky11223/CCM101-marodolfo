# Backup Script Guide

## Full Backup Script
```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/backup_$TIMESTAMP.tar.gz $SOURCE_DIR
echo "Backup completed successfully at $TIMESTAMP!"
```

## File Permissions
The command `chmod +x backup.sh` adds execute permission, allowing the script to run as `./backup.sh`.

## Cron Schedule
`0 2 * * * /root/backup.sh`

- Minute (`0`): minute zero.
- Hour (`2`): 2 AM.
- Day of Month (`*`): every day of the month.
- Month (`*`): every month.
- Day of Week (`*`): every day of the week.

This schedules the script every night at 2:00 AM. The path must match the actual location of backup.sh.
