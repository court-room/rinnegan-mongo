# rinnegan-mongo

[![docker Actions Status](https://github.com/court-room/rinnegan-mongo/workflows/docker/badge.svg)](https://github.com/court-room/rinnegan-mongo/actions)
[![DeepSource](https://static.deepsource.io/deepsource-badge-light-mini.svg)](https://deepsource.io/gh/court-room/rinnegan-mongo/?ref=repository-badge)

## Development

The databse can be used for locally testing the server or the entire set of services.
In order to use the database you need to follow certain steps

- Build the image locally

  ```bash
  $ docker build  --compress --force-rm --tag rinnegan-mongo:latest .
  ```

- Tag the latest image to local registry format

  ```bash
  $ docker image tag rinnegan-mongo:latest localhost:6000/rinnegan-mongo:latest
  ```

- Push the image to the registry

  ```bash
  $ docker push localhost:6000/rinnegan-mongo:latest
  ```

  _OPTIONAL_

There is a shell script at `bin/build.sh` that handles the image build,
tagging and pushing it to the local registry.

## Contact

For any issue please contact the following persons

- [onlinejudge95](https://github.com/onlinejudge95)
