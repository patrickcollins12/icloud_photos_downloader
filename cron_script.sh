#!/bin/bash

printf "\n\nStarting processing...\n"
date

# Make sure it's not already running
pgrep -f icloudpd && echo "icloudpd is already running." && exit
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

/Users/patrickcollins/software_projects/icloud_photos_downloader/venv/bin/python \
	/Users/patrickcollins/software_projects/icloud_photos_downloader/icloudpd.py  \
        -u pcollins1@gmail.com \
        -p Catjump2 \
        -d /Volumes/boxeedisk/Google\ Drive/iCloudPhotos \
        --no-progress-bar \
        --until-found 20 \
        --auto-delete
