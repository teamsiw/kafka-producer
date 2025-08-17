#!/usr/bin/env bash
set -euo pipefail
SERVICE="kafka-producer"

# 한글: systemd 상태 확인
systemctl is-active --quiet "${SERVICE}"

# (옵션) 포트/헬스체크 필요 시 추가
# curl -sf http://127.0.0.1:8080/healthz >/dev/null
