# Infrastructure Report: Linux Environment Investigation

## Overview
This report documents the operating system metrics, core hardware allocations, and network configurations of the virtualized Linux instance investigated using the KillerCoda interactive environment.

---

## System Discovery Findings

| System Metric | Observed Metric / Command Output | Command Executed |
| :--- | :--- | :--- |
| **Operating System** | Ubuntu 24.04.4 LTS (Noble Numbat) | `cat /etc/os-release` |
| **Kernel Version** | `6.8.0-138-generic` | `uname -r` |
| **CPU Model** | Intel Xeon E312xx (Sandy Bridge, IBRS update) | `lscpu \| grep "Model name"` |
| **Number of CPU Cores** | 1 vCPU | `nproc` or `lscpu` |
| **Total RAM** | 1.9 GiB (Swap: 1.0 GiB) | `free -h` |
| **Disk Capacity** | 19 GiB (`/dev/vda1` root partition) | `df -h /` |
| **Mounted File Systems** | `/dev/vda1` (ext4) on `/`, `/dev/vda16` on `/boot`, `/dev/vda15` on `/boot/efi`, `tmpfs` on `/run`, `/dev/shm`, `/run/lock` | `df -hT` |
| **Hostname** | `controlplane` (or `ubuntu`) | `hostname` |
| **IP Address** | `172.30.1.2` (Secondary: `172.17.0.1`) | `hostname -I` |
