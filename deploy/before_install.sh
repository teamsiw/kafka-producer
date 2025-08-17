#!/usr/bin/env bash
set -euo pipefail

APP_DIR="/src/kafka-producer"
USER="kafka"
GROUP="kafka"

# 한글: kafka 계정/그룹 보장
id "${USER}" >/dev/null 2>&1 || useradd -m -s /bin/bash "${USER}"

# 한글: 배포경로 보장 + 소유권
mkdir -p "${APP_DIR}"
chown -R "${USER}:${GROUP}" "${APP_DIR}"
chmod -R 755 "${APP_DIR}"
