#!/bin/sh

# validate args
if [ $# -ne 2 ]; then
  echo "arguments is invalid: require 2 args [repo_name tag]" 1>&2
  exit 1
fi

echo "writing image info[sacloud/$1:$2] to /work/versions/$1"
echo -n "$2" > /work/versions/$1 2>/dev/null

POST_DEPLOY=/work/deploy/post-deploy.sh
if [ -f "$POST_DEPLOY" ]; then
  cd /work; $POST_DEPLOY
else
  echo "post-deploy script[$POST_DEPLOY] is missing."
fi
