#!/usr/bin/env bash

# Load config.
source ./scripts/setup-colors.sh

# Run script within containers.
docker compose exec wordpress bash -c "/scripts/docker-setup-default.sh"

# Start the containers.
echo -e "${SUCCESS}WordPress defaults setup done! 🧟${NC}"