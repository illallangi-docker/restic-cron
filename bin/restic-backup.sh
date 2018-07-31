#!/bin/sh

date

echo restic backup --verbose --hostname $RESTIC_HOST backup $RESTIC_PATH 
restic backup --verbose --hostname $RESTIC_HOST $RESTIC_PATH
