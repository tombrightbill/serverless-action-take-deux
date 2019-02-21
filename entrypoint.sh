#!/bin/bash



mv $GITHUB_WORKSPACE/*.js /root/deploy-worker

cd /root/deploy-worker

echo 'switching to /root'

sls deploy


