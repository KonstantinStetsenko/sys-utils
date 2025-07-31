#!/bin/bash

echo "===== Версия операционной системы ====="
lsb_release -a 2>/dev/null || cat /etc/os-release

echo ""
echo "===== Пользователи с оболочкой /bin/bash ====="
awk -F: '$7 ~ /bash/ {print $1}' /etc/passwd

echo ""
echo "===== Открытые порты ====="
ss -tuln

