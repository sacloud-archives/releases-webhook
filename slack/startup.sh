#!/bin/sh

# validate env
if [ -z "$SLACK_TOKEN" ]; then
  echo 'environment variable $SLACK_TOKEN is requied'
  exit 1
fi

HOOKS_JSON=`cat /webhook/slack/conf/hooks.json.tpl`
echo $(eval echo $HOOKS_JSON) > /webhook/slack/conf/hooks.json

webhook $@