#!/bin/bash
cd /opt/flask-app
setsid nohup python3 app.py > /var/log/flask-app.log 2>&1 < /dev/null &
exit 0