# Identification of Cloud Infrastructure Components

This document categorizes the observed KillerCoda Linux system resources into standard cloud infrastructure pillars based on Chapter 2 concepts.

---

## 1. Compute Resources

* **Description & Purpose:**
  Compute resources encompass the processing power and volatile memory required to execute software instructions, evaluate logic, manage system processes, and handle operational workloads. They consist primarily of Central Processing Units (CPUs) and Random Access Memory (RAM).

* **Importance in Cloud Computing:**
  Compute resources serve as the active engine of cloud infrastructure. They enable cloud providers to allocate processing capability dynamically using virtual machines or containers. Cloud features like auto-scaling rely on elastic compute availability to adjust processing power up or down based on real-time traffic demand.

* **Relation to KillerCoda Environment:**
  In our KillerCoda sandbox, compute is allocated via **1 vCPU core** (*Intel Xeon E312xx Processor*) paired with **1.9 GiB of total RAM** (plus 1.0 GiB swap memory). These resources execute our terminal commands, process shell scripts, and run system utilities in real time.

---

## 2. Storage Resources

* **Description & Purpose:**
  Storage resources provide persistent or temporary physical and virtual media to retain system binaries, application configurations, database records, and user files. These are categorized into block storage, file storage, and object storage.

* **Importance in Cloud Computing:**
  Storage ensures data persistence, durability, and fault tolerance across distributed systems. Elastic block storage and object stores allow cloud engineers to attach or detach volumes dynamically, scale storage capacity independently of compute, and perform automated backups or snapshots for disaster recovery.

* **Relation to KillerCoda Environment:**
  In the KillerCoda node, storage is represented by the **19 GiB root virtual block device** (`/dev/vda1` formatted as `ext4`), alongside dedicated system mounts like `/boot` (`/dev/vda16`) and temporary memory filesystems (`tmpfs`).

---

## 3. Networking Resources

* **Description & Purpose:**
  Networking resources consist of virtual and physical hardware components—including virtual Network Interface Cards (vNICs), subnets, routing tables, and IP addresses—that transport data packets between infrastructure components and external clients.

* **Importance in Cloud Computing:**
  Networking forms the communication infrastructure of the cloud. It isolates workloads within Virtual Private Clouds (VPCs), enforces network security via firewall rules and security groups, and manages traffic distribution across availability zones and the public internet.

* **Relation to KillerCoda Environment:**
  The KillerCoda system connects via a virtual network interface assigned a primary internal IP address of **172.30.1.2** (and a secondary bridge interface `172.17.0.1`). This allows the terminal session to communicate across internal network bridges and access external package repositories.

---

## 4. Operating System

* **Description & Purpose:**
  The Operating System (OS) is the foundational software layer bridging system hardware resources with application software. It manages CPU task scheduling, memory allocation, storage access, system calls, and user utilities.

* **Importance in Cloud Computing:**
  The OS provides a standardized, secure execution environment for cloud instances, virtual machines, and containerized microservices. Minimal and headless server distributions are preferred in cloud deployments to minimize resource overhead and reduce security attack vectors.

* **Relation to KillerCoda Environment:**
  The KillerCoda sandbox runs **Ubuntu 24.04.4 LTS (Noble Numbat)** backed by Linux kernel **6.8.0-138-generic**. This provides the Linux CLI tools, process execution space, and system libraries needed to conduct system administrative tasks.
