# WordPress Setup

This is a simple [WordPress](https://wordpress.org) setup using [Docker Compose](https://docs.docker.com/compose/).

> This setup requires you to setup a theme on your own because it removes all the default plugins and themes.

## Installation

### For a new project

Run these commands if you want to create a new project using this setup.

```bash
sh -c "$(wget -qO- https://raw.githubusercontent.com/tjventurini/wordpress-setup/main/scripts/remote-setup.sh)"
```

### For development

```bash
git clone git@github.com:tjventurini/wordpress-setup.git
```