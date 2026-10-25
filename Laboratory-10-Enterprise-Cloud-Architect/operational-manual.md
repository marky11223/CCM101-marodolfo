# Operational Manual
## Mission 10 - Enterprise Cloud Architect

## 1. System Overview

This project deploys a WordPress web application and MariaDB database using Docker Compose on Ubuntu Server running inside a VirtualBox virtual machine.

### Components
- Ubuntu Server
- Docker Engine
- Docker Compose
- WordPress Container
- MariaDB Container
- UFW Firewall
- Bash Backup Script
- Cron Scheduler

---

## 2. Deployment Procedure

### Step 1: Update Ubuntu

```bash
sudo apt update && sudo apt upgrade -y
```

### Step 2: Install Docker

```bash
sudo apt install -y docker.io docker-compose-v2
sudo systemctl enable --now docker
```

Verify installation:

```bash
sudo docker --version
sudo docker compose version
```

### Step 3: Configure Environment Variables

Create `.env`:

```text
MYSQL_DATABASE=wordpress
MYSQL_USER=wpuser
MYSQL_PASSWORD=Password123!
MYSQL_ROOT_PASSWORD=RootPassword123!
```

Set permissions:

```bash
chmod 600 .env
```

### Step 4: Deploy Application

```bash
sudo docker compose up -d
```

Verify containers:

```bash
sudo docker compose ps
```

Expected result:

- WordPress container: Up
- MariaDB container: Up

---

## 3. Security Configuration

### UFW Firewall

Enable firewall:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow OpenSSH
sudo ufw allow 80/tcp
sudo ufw enable
```

Check rules:

```bash
sudo ufw status verbose
```

### Security Measures Implemented

- Incoming traffic denied by default
- SSH access allowed
- HTTP access allowed
- MariaDB port 3306 not exposed publicly
- Environment variables stored in `.env`
- Database backups excluded from GitHub

---

## 4. Container Management

### Start Containers

```bash
sudo docker compose up -d
```

### Stop Containers

```bash
sudo docker compose down
```

### Restart Containers

```bash
sudo docker compose restart
```

### View Logs

```bash
sudo docker compose logs
```

WordPress logs:

```bash
sudo docker compose logs wordpress
```

MariaDB logs:

```bash
sudo docker compose logs db
```

---

## 5. Backup and Recovery

### Backup Script

Location:

```text
automation-script.sh
```

Run manually:

```bash
./automation-script.sh
```

Check generated backups:

```bash
ls -lh backups/
```

Backup files are stored as:

```text
mariadb_YYYYMMDD_HHMMSS.sql.gz
```

---

## 6. Scheduled Automation

Cron Job:

```bash
0 2 * * * /home/rodolfo/Laboratory-10-Enterprise-Cloud-Architect/automation-script.sh >> /home/rodolfo/Laboratory-10-Enterprise-Cloud-Architect/cron.log 2>&1
```

View cron jobs:

```bash
crontab -l
```

Check cron service:

```bash
sudo systemctl status cron
```

---

## 7. Maintenance Procedures

### Update Ubuntu

```bash
sudo apt update
sudo apt upgrade -y
```

### Update Containers

```bash
sudo docker compose pull
sudo docker compose up -d
```

### Check Running Containers

```bash
sudo docker compose ps
```

### Check Storage Usage

```bash
docker system df
```

---

## 8. Troubleshooting

### Container Not Running

```bash
sudo docker compose ps
sudo docker compose logs
```

### Website Unreachable

Check:

```bash
sudo ufw status
```

Check:

```bash
sudo docker compose ps
```

### Database Connection Error

Verify:

```bash
cat .env
```

Check logs:

```bash
sudo docker compose logs db
```

### Backup Failure

Verify:

```bash
ls backups/
```

Run:

```bash
./automation-script.sh
```

---

## 9. Project Files

Required files:

- README.md
- docker-compose.yml
- automation-script.sh
- operational-manual.md
- final-reflection.md
- architecture-diagram.png
- .gitignore

---

## 10. Conclusion

This deployment demonstrates the implementation of a cloud-based WordPress and MariaDB environment using Docker Compose with security controls, automated database backups, firewall protection, and operational documentation.
