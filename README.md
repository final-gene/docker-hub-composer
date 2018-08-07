# Composer
[![CircleCI](https://circleci.com/gh/final-gene/docker-hub-composer/tree/master.svg?style=svg)](https://circleci.com/gh/final-gene/docker-hub-composer/tree/master) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/4cf4be3e6d6540c0a1c0d72a239ae01b)](https://www.codacy.com/app/final-gene/docker-hub-composer?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=final-gene/docker-hub-composer&amp;utm_campaign=Badge_Grade)

This is a image to run [composer](https://getcomposer.org) with the [hirak/prestissimo](https://packagist.org/packages/hirak/prestissimo) package.

## Supported tags and respective Dockerfile links
* `1.7`, `latest` [(Dockerfile)](https://github.com/finalgene/docker-hub-composer/blob/master/1.7/Dockerfile)
* `1.6` [(Dockerfile)](https://github.com/finalgene/docker-hub-composer/blob/master/1.6/Dockerfile)

## How to use this image
Run the composer image:

```bash
docker run \
    --rm \
    --interactive \
    --tty \
    --volume "$(pwd)":/app \
    finalgene/composer install
```

You can mount the Composer home directory from your host inside the Container to share caching and configuration files:

```bash
docker run \
    --rm \
    --interactive \
    --tty \
    --volume "$(pwd)":/app \
    --volume ${COMPOSER_HOME}:/cache/.composer \
    finalgene/composer install
```

By default, Composer runs as root inside the container. This can lead to permission issues on your host filesystem. You can run Composer as your local user:

```bash
docker run \
    --rm \
    --interactive \
    --tty \
    --volume "$(pwd)":/app \
    --user $(id -u):$(id -g) \
    finalgene/composer install
```

For further information have a look at the [official composer image](https://hub.docker.com/_/composer/).

## Quick reference
* **Where to get help:**
[the Docker Community Forums](https://forums.docker.com), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

* **Where to file issues:**
https://github.com/finalgene/docker-hub-composer/issues

* **Maintained by:**
[The final gene Team](https://github.com/finalgene)

* **Source of this description:**
[Repository README.md](https://github.com/finalgene/docker-hub-composer/blob/master/README.md)
