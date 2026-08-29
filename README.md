# Laboratory 02: Build the Cloud Infrastructure Blueprint

## Mission Overview
This laboratory activity focuses on exploring a virtualized Linux environment via KillerCoda, mapping local system specifications to core cloud computing infrastructure components, and performing a detailed comparative study of AWS, Azure, and GCP services. It concludes with designing a basic cloud architecture diagram.

## Objectives
- Perform system discovery using Linux command-line diagnostic tools.
- Map system hardware elements to compute, storage, networking, and OS cloud pillars.
- Compare equivalent infrastructure services across major public cloud providers.
- Design an end-to-end simple cloud architecture diagram.
- Maintain structured technical documentation in GitHub using Markdown format.

## Cloud Infrastructure Components
- **Compute:** 1 vCPU (Intel Xeon E312xx) and 1.9 GiB RAM allocations processing runtime instructions.
- **Storage:** 19 GiB block storage attached to the root (`/`) filesystem.
- **Networking:** Virtual network adapter (`eth0` / IP: `172.30.1.2`) managing internal traffic routing.
- **Operating System:** Ubuntu 24.04.4 LTS executing system binaries and commands.

## Tools Used
- KillerCoda Interactive Terminal
- Git & GitHub
- Diagramming Tool (Draw.io / Excalidraw)
- Linux Command Line Interface (CLI)

## Linux Commands Executed
- `cat /etc/os-release`
- `uname -r`
- `lscpu`
- `nproc`
- `free -h`
- `df -h`
- `df -hT`
- `hostname`
- `hostname -I`

## Skills Learned
- Linux environment discovery and hardware reporting using CLI tools.
- Cloud architecture modeling and vendor service comparison.
- Applying Heredoc (`cat << EOF`) methods for efficient file creation in the terminal.
- Technical documentation formatting using GitHub Markdown conventions.

## Challenges Encountered
- Distinguishing physical block devices from virtual overlay filesystems when analyzing `df -hT` output.
- Navigating terminal-based file creation and ensuring Git synchronization stays up to date with remote repositories.
