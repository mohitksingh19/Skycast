#!/bin/bash
APP_NAME="Skycast"

# Check if the application is registered in PM2
echo 'run application_start.sh: ' >> /home/ec2-user/Skycast/deploy.log
echo 'pm2 restart Skycast' >> /home/ec2-user/Skycast/deploy.log
if pm2 list | grep -qw "$APP_NAME"; then
  echo "$APP_NAME is ReStarting the application..."
  pm2 restart "$APP_NAME" >> /home/ec2-user/Skycast/deploy1.log
else
  echo "$APP_NAME is not registered. Starting the application..."
  pm2 start ../app.js --name "$APP_NAME"
fi
