#!/bin/bash
if [ -z ${GIT_BRANCH+x} ];
then
   echo "GIT_BRANCH is unset";
else
   echo "GIT_BRANCH is set to '$GIT_BRANCH'";
fi
