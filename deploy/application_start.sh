#!/usr/bin/env bash
set -euo pipefail
SERVICE="kafka-producer"

systemctl enable "${SERVICE}"
systemctl start "${SERVICE}"
