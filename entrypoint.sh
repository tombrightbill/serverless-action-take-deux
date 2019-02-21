#!/bin/bash



mv $GITHUB_WORKSPACE/*.js /root/worker-deploy

cd /root/worker-deploy

echo 'switching to worker directory contents below'

ls

cat serverless.yml

export SLS_DEBUG=*

sls deploy


