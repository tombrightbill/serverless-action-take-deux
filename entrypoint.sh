#!/bin/bash

mv $GITHUB_WORKSPACE/*.js /root/worker-deploy

cd /root/worker-deploy

sls deploy


