#!/bin/bash

APP_NAME="my-app-1.0-SNAPSHOT.jar"
DEPLOY_DIR="/var/www/myapp"
LOG_FILE="/var/www/myapp/app.log"

# Copy the JAR to the server's deploy directory
cp target/$APP_NAME $DEPLOY_DIR/

# Stop any running instances of the app
pkill -f $APP_NAME

# Start the application
nohup java -jar $DEPLOY_DIR/$APP_NAME > $LOG_FILE 2>&1 &
echo "Application deployed successfully!"

