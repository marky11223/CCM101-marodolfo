# Security Audit Report

## Principle of Least Privilege (PoLP)
The Principle of Least Privilege means giving a user or service only the permissions needed to do its assigned job. This is important for cloud accounts because unnecessary permissions can let an attacker or mistaken user access resources or make changes beyond what is required.

## Attack Surface
A virtual machine's attack surface is the collection of places an attacker might try to reach, such as open ports, running services, applications, and user accounts. Turning off unused services and closing unnecessary ports reduces the number of possible entry points.

## Default Deny Policy
A Default Deny policy blocks incoming connections unless a specific rule permits them. It is safer than trying to block individual attackers because unknown or unexpected traffic remains blocked unless it is explicitly allowed.
