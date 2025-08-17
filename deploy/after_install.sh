#!/usr/bin/env bash
set -euo pipefail

APP_DIR="/src/kafka-producer"
SERVICE_NAME="kafka-producer"
UNIT_SRC="/src/kafka-producer/deploy/kafka-producer.service"
UNIT_DST="/etc/systemd/system/${SERVICE_NAME}.service"

# 한글: 유닛 설치/갱신
cp -f "${UNIT_SRC}" "${UNIT_DST}"
chmod 644 "${UNIT_DST}"
systemctl daemon-reload

# 한글: 소유권/권한 재확인
chown -R kafka:kafka "${APP_DIR}"
chmod -R 755 "${APP_DIR}"

# (옵션) 의존패키지 설치가 필요하면 여기서 수행 (Amazon Linux)
# 예) yum -y install python3 pip ...
