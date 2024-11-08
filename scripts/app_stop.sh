#!/bin/bash
cd /home/ec2-user/concert-app-zjt-nov6-2024
export NVM_DIR="/home/ec2-user/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Only stop the process if it's running
if pm2 list | grep -q "index"; then
    pm2 stop index
else
    echo "index is not running, nothing to stop."
fi

