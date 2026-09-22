# MinIO Deployment

## Docker Deployment Command

```bash
sudo docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
-e "MINIO_ROOT_USER=cloudadmin" \
-e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
minio/minio server /data --console-address ":9001"
```

## Web Console

The MinIO Web Console was accessed using port **9001**.

## Bucket

The storage bucket created is **client-photos**.

## Environment Variables

The `-e` flags define environment variables for the MinIO container.

- `MINIO_ROOT_USER=cloudadmin` sets the administrator username.
- `MINIO_ROOT_PASSWORD=CloudNova2026!` sets the administrator password.

These variables configure the MinIO login credentials.
