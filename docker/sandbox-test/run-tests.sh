#!/usr/bin/env bash
set -euo pipefail

if ! grep -q "api.openai.com" /etc/hosts; then
  echo "127.0.0.1 api.openai.com" >> /etc/hosts
fi

pytest -q /app/tests
