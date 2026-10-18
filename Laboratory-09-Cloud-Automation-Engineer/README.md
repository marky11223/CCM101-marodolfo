# Mission 9: The Cloud Automation Engineer

## Mission Overview
This mission uses a Bash script to automate a backup and cron to schedule it.

## Objectives
- Create sample application data.
- Write and run a Bash backup script.
- Use chmod to grant execute permission.
- Schedule the script with crontab.
- Document the work and evidence in the GitHub portfolio.

## Commands Executed
```bash
mkdir -p app-data
echo "This is critical client data." > app-data/data.txt
nano backup.sh
chmod +x backup.sh
./backup.sh
ls -l backups/
crontab -l
env EDITOR=nano crontab -e
```

## Skills Learned
- Bash scripting and variables
- Creating compressed backups with tar
- Linux file permissions
- Cron scheduling
- Markdown and GitHub version control

## Evidence
- screenshots/script-execution.png
- screenshots/cron-schedule.png
