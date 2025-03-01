---
name: Teams Notify
author: Geco-iT Teams
icon: https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Microsoft_Office_Teams_%282018%E2%80%93present%29.svg/langfr-110px-Microsoft_Office_Teams_%282018%E2%80%93present%29.svg.png
description: Plugin to send pipeline status notify to Microsot Teams
tags: [notifications, chat]
containerImage: gecoit84/woodpecker-teams-notify-plugin
containerImageUrl: https://hub.docker.com/r/gecoit84/woodpecker-teams-notify-plugin
url: https://github.com/GECO-IT/woodpecker-plugin-teams-notify
---

# Teams Notify

Plugin for sending Microsoft Teams notifications with pipeline status.

For create an Teams Webhook follow [this](https://learn.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/how-to/add-incoming-webhook)

## Settings

| Settings Name   | Default | Description                                                   |
| --------------- | ------- | ------------------------------------------------------------- |
| `url`           | _none_  | Teams Webhook URL                                             |
| `private_forge` | _false_ | Set this to true if your forge is not accessible to the world |
| `debug`         | _false_ | Enable Debug mode                                             |

## Pipeline Usage

```yaml
...
steps:
  teams-notify:
    image: gecoit84/woodpecker-teams-notify-plugin
    settings:
      url:
        from_secret: teams_webhook
    when:
      - status: [success, failure]
        event: [push, tag]
...
```

## Result

- Success Build Notification

![sucess](./assets/success.png)

- Failed Build Notification

![failed](./assets/failed.png)
