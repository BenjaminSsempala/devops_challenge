#!/bin/bash

if [ -d "./logs" ]; then
    echo "Directory already exists: logs"
else
    mkdir ./logs
    echo "Logs directory created."
fi

if [ -f "./logs/system.log" ]; then
    echo "File already exists: system.log"
else
    touch ./logs/system.log
    echo "# System.log created." >> ./logs/system.log
    chmod 644 ./logs/system.log
fi

if [ -d "./configs" ]; then
    echo "Directory already exists: configs"
else
    mkdir ./configs
    echo "Configs directory created."
fi

if [ -f "./configs/app.conf" ]; then
    echo "App.conf already exists."
else
    touch ./configs/app.conf
    echo "# App.conf created." >> ./configs/app.conf
    chmod 444 ./configs/app.conf
fi

if [ -d "./scripts" ]; then
    echo "Directory already exists: scripts"
else
    mkdir ./scripts
    echo "Scripts directory created."
fi

if [ -f "./scripts/backup.sh" ]; then
    echo "Backup.sh already exists."
else
    touch ./scripts/backup.sh
    echo "# Backup.sh created." >> ./scripts/backup.sh
    chmod 755 ./scripts/backup.sh
fi

echo ""
echo "Directory structure:"
tree

echo ""
echo "Permissions overview:"
ls -lR