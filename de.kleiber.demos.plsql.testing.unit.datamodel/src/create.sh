#!/bin/bash
echo ${BUILD_TAG}
if [ -z ${BUILD_TAG+x} ];
then
   echo "BUILD_TAG is unset";
else
   echo "BUILD_TAG is set to '$BUILD_TAG'";
fi
