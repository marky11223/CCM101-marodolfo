# Container Observability

## Application Logs
The Nginx container named `client-website` was monitored using:

```bash
sudo docker logs client-website


### 404 Error Log

172.17.0.1 - - [10/Oct/2026:23:07:45 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"

```bash
sudo docker logs client-website | grep "404"
```

### Why Application Logs Are Important

Application logs are important because they provide a record of events and requests processed by an application. They help engineers identify errors, understand what happened before a failure, and troubleshoot problems using actual evidence.

