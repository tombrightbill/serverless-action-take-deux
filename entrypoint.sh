#!/bin/bash

ACTION_WORKSPACE=/root/worker-deploy

if [ -e $GITHUB_WORKSPACE/serverless.yml ]
then
    mv $GITHUB_WORKSPACE/serverless.yml $ACTION_WORKSPACE
fi

mv $GITHUB_WORKSPACE/*.js $ACTION_WORKSPACE/worker-deploy

cd $ACTION_WORKSPACE

sls deploy


