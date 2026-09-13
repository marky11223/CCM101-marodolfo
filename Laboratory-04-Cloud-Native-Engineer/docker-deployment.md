# Docker Deployment

## Container Lifecycle Commands

### 1. List Running Containers

```bash
sudo docker ps
```

This command lists all containers that are currently running.

### 2. Stop the Running Container

```bash
sudo docker stop nginx-lab
```

This command stops the running Nginx container.

### 3. Verify It Is Stopped

```bash
sudo docker ps -a
```

This command displays all containers so the stopped state of the Nginx container can be verified.

### 4. Remove the Container

```bash
sudo docker rm nginx-lab
```

This command removes the stopped Nginx container from the system.

## Nginx Deployment Commands

### Pull the Nginx Image

```bash
sudo docker pull nginx
```

This command downloads the official Nginx image from Docker Hub.

### Run the Nginx Container

```bash
sudo docker run -d --name nginx-lab -p 8080:80 nginx
```

This command runs Nginx in detached mode and maps host port 8080 to container port 80.

### Test the Web Server

```bash
curl http://localhost:8080
```

This command sends an HTTP request to the local Nginx web server to confirm that it is working.

## Screenshot

![Container Lifecycle](screenshots/container-lifecycle.png)
