#!/bin/bash

echo "current directory is"

pwd

echo "currentcontent is"

ls

echo "changing to ${HOME}/${GITHUB_ACTION}"

mv ${HOME}/${GITHUB_ACTION}

echo "listing contents of this direction"

ls

