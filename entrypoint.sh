#!/bin/bash



mv $GITHUB_WORKSPACE/*.js /root/worker-deploy

cd /root/worker-deploy

echo 'switching to /root'

sls deploy


