#!/bin/bash
set -euxo pipefail

echo "[BeforeInstall] whoami=$(whoami)"
ls -al /var/www/html || true

# 혹시 immutable 속성 걸려있을 수도 있어서 해제 시도(없으면 무시)
chattr -i /var/www/html/index.html 2>/dev/null || true

rm -fv /var/www/html/index.html || true
rm -rfv /var/www/html/* || true

echo "[BeforeInstall] after delete"
ls -al /var/www/html || true
