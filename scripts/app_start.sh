#!/bin/bash
cd /home/ec2-user/concert-app-zjt-nov6-2024
export NVM_DIR="/home/ec2-user/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Start the app using pm2 with the correct entry file
pm2 start index.js
