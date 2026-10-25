

#!/usr/bin/env bash
set -Eeuo pipefail

PROJECT_DIR="$HOME/Laboratory-10-Enterprise-Cloud-Architect"
cd "$PROJECT_DIR"

source "$PROJECT_DIR/.env"

BACKUP_DIR="$PROJECT_DIR/backups"
mkdir -p "$BACKUP_DIR"

TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
BACKUP_FILE="$BACKUP_DIR/mariadb_${TIMESTAMP}.sql.gz"

sudo docker compose exec -T db mariadb-dump \
-u root -p"${MYSQL_ROOT_PASSWORD}" "${MYSQL_DATABASE}" \
| gzip > "$BACKUP_FILE"

test -s "$BACKUP_FILE"

find "$BACKUP_DIR" -type f -name '*.sql.gz' -mtime +7 -delete

echo "Database backup created: $BACKUP_FILE"

