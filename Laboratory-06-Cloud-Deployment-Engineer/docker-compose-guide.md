# Docker Compose Guide

## The `services:` Block

The `services:` block defines the containers that make up the application. In this deployment, it contains two services: `database` for MariaDB and `app` for Nextcloud.

## How Nextcloud Finds the Database

The Nextcloud application uses the `MYSQL_HOST` environment variable to identify the database service:

```text
MYSQL_HOST=database
```

The value `database` corresponds to the service name defined in the Compose file. Docker Compose provides networking between the services, allowing the Nextcloud container to communicate with the MariaDB container using this service name.

## docker run vs docker-compose up -d

The `docker run` command is used to create and start an individual Docker container with its configuration provided directly in the command. The `docker-compose up -d` command uses a YAML configuration file to define multiple services and starts the complete application stack in the background.

## Infrastructure as Code

Docker Compose demonstrates Infrastructure as Code because the application infrastructure is described in a configuration file. The configuration can be reused to deploy the same multi-container environment consistently.

