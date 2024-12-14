#!/bin/bash

SOURCE_DIR="/chemin/vers/R1"
DEST_DIR="/chemin/vers/R2"
REMOTE_USER="utilisateur"
REMOTE_HOST="adresse_IP_S2"
DATE=$(date +'%Y-%m-%d')
BACKUP_NAME="backup_full_$DATE.tar.gz"

tar -czf /tmp/$BACKUP_NAME $SOURCE_DIR
scp /tmp/$BACKUP_NAME $REMOTE_USER@$REMOTE_HOST:$DEST_DIR

rm /tmp/$BACKUP_NAME
