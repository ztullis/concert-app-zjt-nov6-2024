#!/bin/bash
cd /home/ec2-user/app
. ~/.nvm/nvm.sh
pm2 restart index.js
