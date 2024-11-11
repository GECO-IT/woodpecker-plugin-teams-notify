# Woodpecker CI - Teams Notify plugin [![status-badge](https://ci.geco-it.net/api/badges/5/status.svg)](https://ci.geco-it.net/repos/5)

Woodpecker Windows plugin to send teams notifications for build status

For create an Teams Webhook follow [this](https://learn.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/how-to/add-incoming-webhook)

> **Warning**
> On Windows, we use __file.exe__ tool for detect type mime from <https://gnuwin32.sourceforge.net/packages/file.htm>

For plugin usage please take a look at [docs.md](./docs.md)

## Build

Build the binary with the following commands:

```bash
# Linux image
$ docker buildx build -t gecoit84/woodpecker-teams-notify-plugin .

# Windows image
C:\> docker build -f Dockerfile.Windows -t gecoit84/woodpecker-teams-notify-plugin .
```

## Result

- Success Build Notifcation

![sucess](./assets/success.png)

- Failed Build Notifcation

![failed](./assets/failed.png)

## License

GPLv3+

## Author Information

This plugin was created in 2024 by Cyril DUCHENOY, CEO of [Geco-iT SARL](www.geco-it.fr).

> **Note**
> Read-only source code mirror of Geco-iT Open Source projects.
