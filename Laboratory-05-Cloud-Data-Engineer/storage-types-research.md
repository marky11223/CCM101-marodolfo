# Types of Cloud Storage

| Storage Type | Description | Primary Use Case | Cloud Provider Example |
|---|---|---|---|
| Block Storage | Stores data in fixed-size blocks that can be accessed individually by the operating system. | Virtual machines, databases, and applications that require disk-like storage. | AWS EBS |
| File Storage | Stores data as files organized in folders and directories and allows shared access. | Shared files, documents, and applications that need a common file system. | AWS EFS |
| Object Storage | Stores data as objects together with metadata and a unique identifier. | Images, videos, backups, and other large amounts of unstructured data. | AWS S3 |

## Client Explanation

Object Storage is well suited for the client's photo-sharing application because it is designed to store large amounts of unstructured data such as images. It also allows uploaded photos to be stored as objects and accessed through a scalable storage service.
