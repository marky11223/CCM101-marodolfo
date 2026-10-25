# Mission 10: The Enterprise Cloud Architect

## Project Overview
This project demonstrates a WordPress and MariaDB deployment using Docker Compose on Ubuntu Server.

## Technology Stack
- Ubuntu Server 26.04 LTS
- VirtualBox
- Docker
- Docker Compose
- WordPress
- MariaDB
- UFW Firewall
- Bash Automation Script
- Cron Scheduler

## Access
- Application URL: http://192.168.1.241
- Network Mode: Bridged

## Security
- UFW enabled
- OpenSSH allowed
- Port 80 allowed
- Database port not exposed

## Persistent Storage
- db_data volume
- wordpress_data volume

## Automation
- Daily database backup at 2:00 AM

## Useful Commands
- sudo docker compose ps
- sudo docker compose logs
- sudo ufw status
- crontab -l
