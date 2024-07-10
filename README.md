# priobike-grafana

This repo is used to build our own Grafana image with our configuration baked in.
Base-Image: [Grafana](https://hub.docker.com/r/grafana/grafana)

## ⚠️ Don't merge `main`/`stable`/`release` branch ⚠️

Similiar to our [priobike-deploylment-docker](https://github.com/priobike/priobike-deployment-docker) repo, those branches include deployment specific differences and are diverging on purpose.

[Learn more about PrioBike](https://github.com/priobike)

# Quickstart

The easiest way to run Grafana is to use the contained `Dockerfile`:
```
docker build -t priobike-grafana . && docker run -p 3000:3000 -e GF_SMTP_ENABLED=false -e GF_SMTP_USER={youremail} -e GF_SMTP_FROM_ADDRESS={yourmail} --rm priobike-grafana
```

As long as not overwritten by env variables:
User: `admin`
Password: `admin`

Note that data will not be available locally.

These are the build arguments we use to configure the grafana build:
- `GF_SECURITY_ADMIN_USER`
- `GF_SECURITY_ADMIN_PASSWORD`
- `GF_USERS_ALLOW_SIGN_UP`
- `GF_SERVER_ROOT_URL`
- `GF_INSTALL_PLUGINS`
- `GF_USERS_ALLOW_SIGN_UP`
- `GF_SMTP_ENABLED`
- `GF_SMTP_HOST`
- `GF_SMTP_USER`
- `GF_SMTP_PASSWORD`
- `GF_SMTP_SKIP_VERIFY`
- `GF_SMTP_FROM_ADDRESS`
- `GF_SMTP_FROM_NAME`

For more information see: [Configure Grafana](https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/)

## Contributing

We highly encourage you to open an issue or a pull request. You can also use our repository freely with the `MIT` license.

Every service runs through testing before it is deployed in our release setup. Read more in our [PrioBike deployment readme](https://github.com/priobike/.github/blob/main/wiki/deployment.md) to understand how specific branches/tags are deployed.

## Anything unclear?

Help us improve this documentation. If you have any problems or unclarities, feel free to open an issue.
