# Mission 6 Reflection

## 1. How does writing a docker-compose.yml file make a cloud engineer's job easier?

Writing a docker-compose.yml file makes deployment easier because the configuration of multiple containers can be stored in one file. Instead of manually typing many Docker commands, an engineer can use the Compose configuration to define the services, images, ports, and environment variables in an organized way. This also makes the deployment easier to repeat.

## 2. What happens if you make an indentation error in a YAML file?

YAML depends on correct indentation to understand the structure of the configuration. An indentation error, such as using a Tab instead of spaces, can cause the YAML file to become invalid. Docker Compose may then display an error instead of deploying the services.

## 3. Why did we use environment variables in the Compose file?

Environment variables were used to provide configuration information such as database passwords, database names, usernames, and the database host. They allow the containers to receive the information they need without placing those settings directly inside the application commands.

## 4. How did it feel to deploy Nextcloud in just a few minutes?

Deploying Nextcloud with Docker Compose showed how quickly a multi-container application can be created when its infrastructure is already defined in code. Seeing the Nextcloud setup page after starting the containers demonstrated how the web application and database could work together as one system.

## 5. How has your understanding of Cloud Computing evolved since Mission 1?

Since Mission 1, my understanding of Cloud Computing has developed from basic Linux and cloud concepts to practical deployment. I have learned how Linux commands, GitHub, Docker, storage, containers, and Docker Compose can work together. I now have a better understanding of how cloud engineers automate and organize infrastructure.

