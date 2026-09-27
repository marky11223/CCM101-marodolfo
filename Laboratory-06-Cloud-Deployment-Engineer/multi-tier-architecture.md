# Multi-Tier Architecture

## What is Two-Tier Architecture?

A two-tier architecture separates an application into two main layers: the Web/Application Tier and the Database Tier. Each tier has a specific responsibility and communicates with the other tier to provide the complete application service.

## The Web/Application Tier

The Web/Application Tier provides the user-facing application. It handles HTTP requests, displays the web interface, and processes requests from users. In this laboratory, Nextcloud serves as the Web/Application Tier.

## The Database Tier

The Database Tier stores persistent information required by the application. This includes user accounts, credentials, file metadata, and other application-related data. In this laboratory, MariaDB serves as the Database Tier.

## Why Separate Them?

Separating the web server and database into different containers makes the system easier to manage and maintain. Each container has a specific responsibility, allowing the application and database to be managed independently instead of placing both services inside one container.

