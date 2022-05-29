# WordPress Setup

This is a simple [WordPress](https://wordpress.org) setup using [Docker Compose](https://docs.docker.com/compose/).

> This setup requires you to setup a theme on your own because it removes all the default plugins and themes.

## Installation

### For a new project

Run these commands if you want to create a new project using this setup.

```bash
bash -c "$(wget -qO- https://raw.githubusercontent.com/tjventurini/wordpress-setup/main/scripts/remote-setup.sh)"
```

### For development

```bash
git clone git@github.com:tjventurini/wordpress-setup.git
```

## Configuration

At the time of writing this the configuration file `.env` includes the following values.

```
SLUG=wordpress
DOMAIN=wordpress.localhost
DB_ROOT_PASSWORD=secret
DB_NAME=wordpress
DB_USER=wordpress
DB_PASSWORD=wordpress
UID=1000
GID=1000
```

## Commands

```bash
make init
make up
make start # alias for `make up`
make down
make stop # alias for `make down`
make clear
```