#!/bin/bash

echo 'I am'
whoami

echo "current directory is"

pwd

echo "current content is"

ls

# echo "changing to /github/workspace/worker-deploy"

# cd /github/workspace/worker-deploy/

echo "current directory is blah"

pwd

echo "listing contents of this directory"

ls

echo 'github workspace is'

echo $GITHUB_WORKSPACE

echo ' HOME in action below'

echo $HOME

echo 'switching to /root'

cd /root
ls
pwd

