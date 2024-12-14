#!/bin/bash

REMOTE_USER="utilisateur"
REMOTE_HOST="adresse_IP_S2"
DEST_DIR="/chemin/vers/R2"

ssh $REMOTE_USER@$REMOTE_HOST "find $DEST_DIR -name 'backup_diff_*' -mtime +7 -delete"

ssh $REMOTE_USER@$REMOTE_HOST "find $DEST_DIR -name 'backup_full_*' -mtime +28 -delete"

ssh $REMOTE_USER@$REMOTE_HOST "find $DEST_DIR -name 'backup_full_*' -mtime +180 -delete"
