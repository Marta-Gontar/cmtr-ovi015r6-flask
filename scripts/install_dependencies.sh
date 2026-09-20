#!/bin/bash
set -e
if ! command -v pip3 >/dev/null 2>&1; then
  if command -v dnf >/dev/null 2>&1; then dnf install -y python3-pip
  elif command -v yum >/dev/null 2>&1; then yum install -y python3-pip
  else apt-get update -y && apt-get install -y python3-pip
  fi
fi
pip3 install -r /opt/flask-app/requirements.txt || pip3 install --break-system-packages -r /opt/flask-app/requirements.txt