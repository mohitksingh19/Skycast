#!/bin/bash
echo "Starting application..."
cd /home/ec2-user/Skycast
pm2 restart app.js

