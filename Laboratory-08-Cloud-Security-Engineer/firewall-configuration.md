# Firewall Configuration

## SSH access
Command used: `sudo ufw allow ssh`
SSH was allowed before enabling the firewall to preserve administrative access.

## Default policies
Commands used:
`sudo ufw default deny incoming`
`sudo ufw default allow outgoing`
Incoming connections are denied unless a specific rule allows them. Outgoing connections are allowed by default.

## Web application
Command used: `sudo ufw allow 8080/tcp`
This rule permits TCP traffic to port 8080 for the web application.

## Safety note
If `sudo ufw enable` is run before `sudo ufw allow ssh`, incoming SSH connections may be blocked and remote administration may be lost.
