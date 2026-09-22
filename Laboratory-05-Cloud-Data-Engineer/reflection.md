# Mission Reflection

This laboratory helped me understand why object storage is useful for applications that handle large amounts of unstructured data such as photos. Compared with traditional block storage, object storage is designed to manage objects such as images together with their metadata and identifiers. This makes it suitable for a photo-sharing application that may need to store millions of user-uploaded files.

Using Docker made deploying MinIO easier because I could start the storage server with one container command instead of manually installing and configuring all of its components. The Docker command also allowed me to specify the ports and administrator credentials through environment variables. This made the deployment process more consistent and helped me understand how containerized services can be configured.

A bucket is a storage container used to organize objects in an object storage system. In this activity, I created a bucket named `client-photos` and uploaded a sample file through the MinIO Web Console. This showed me how users can interact with object storage through a web interface.

Large enterprise companies can reduce the risk of data loss by using redundancy, replication, backups, and distributed storage across multiple systems or locations. These approaches help keep copies of data available even if a physical server fails.

My confidence in using the Linux command line is also growing. In this laboratory, I used commands to create directories and Markdown files, verify Docker containers, and commit and push documentation to GitHub. I am becoming more comfortable following a sequence of commands and checking the results after each step.
