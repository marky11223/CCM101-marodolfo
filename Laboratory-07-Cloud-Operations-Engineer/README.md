# Laboratory 07 – Cloud Operations Engineer

## Mission Overview

This laboratory focuses on cloud operations, observability, and monitoring. The activities establish a Linux host performance baseline, deploy an Nginx container, generate HTTP traffic, inspect application logs, and monitor container resource usage.

## Objectives

- Monitor Linux CPU, memory, and disk resources.
- Deploy an Nginx web container.
- Generate HTTP requests and an intentional 404 error.
- Analyze Docker application logs.
- Monitor real-time container CPU and memory metrics.
- Document system health and observability findings.

## Monitoring Commands Executed

```bash
free -h
df -h /
top
sudo docker run -d -p 8080:80 --name client-website nginx
sudo docker ps
curl http://localhost:8080
curl http://localhost:8080/hidden-admin-page
sudo docker logs client-website
sudo docker logs client-website | grep "404"
sudo docker stats
```

## Skills Learned

- Linux system monitoring
- CPU and memory observation
- Disk capacity monitoring
- Docker container deployment
- HTTP traffic simulation
- Application log analysis
- Container resource monitoring
- Cloud observability
- Technical documentation
- Git and GitHub portfolio management

