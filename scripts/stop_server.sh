#!/bin/bash
echo "Stopping existing application..."
sudo systemctl stop Skycast || true
pm2 stop all || true

