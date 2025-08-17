#!/usr/bin/env bash
set -euo pipefail
SERVICE="kafka-producer"

# 한글: 서비스가 있으면 중지(없어도 통과)
if systemctl list-unit-files | grep -q "^${SERVICE}.service"; then
  systemctl stop "${SERVICE}" || true    # 한글: 실행중 아니어도 무시
fi
