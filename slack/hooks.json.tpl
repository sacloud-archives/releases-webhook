[
  {
    "id": "slack-force-deploy",
    "execute-command": "/work/deploy/post-deploy.sh",
    "command-working-directory": "/work/",
    "response-message": "Executing docker-stack force-deploy script from slack-command",
    "trigger-rule":
    {
      "match":
      {
        "type": "value",
        "value": "$SLACK_TOKEN",
        "parameter":
        {
          "source": "payload",
          "name": "token"
        }
      }
    }
  }
]

