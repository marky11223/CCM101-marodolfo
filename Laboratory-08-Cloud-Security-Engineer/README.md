# Mission 8: The Cloud Security Engineer

## Mission Overview
This mission deploys a web application and configures a host-based firewall to reduce unnecessary network access.

## Objectives
- Explain the Principle of Least Privilege, attack surface, and Default Deny.
- Run and test an Nginx container on port 8080.
- Configure UFW to allow SSH and the web application while denying other incoming traffic by default.
- Record commands, results, and screenshot evidence.

## Commands Executed
- `sudo docker run -d --name secure-web-app -p 8080:80 nginx`
- `curl -i http://localhost:8080`
- `sudo ufw allow ssh`
- `sudo ufw default deny incoming`
- `sudo ufw default allow outgoing`
- `sudo ufw enable`
- `sudo ufw allow 8080/tcp`
- `sudo ufw status numbered`

## Skills Learned
- Basic host-based firewall configuration with UFW.
- Auditing exposed services and reducing attack surface.
- Testing a web service with curl.
- Documenting security changes and evidence in a GitHub portfolio.

## Evidence
See the `screenshots/` folder for screenshots captured during the mission.
