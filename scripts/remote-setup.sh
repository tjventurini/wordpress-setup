#!/usr/bin/env bash

# Setup colors
ERROR='\033[0;31m'
SUCCESS='\033[0;32m'
WARN='\033[0;33m'
NC='\033[0m' # No Color

# Ask if this is the correct directory
while true; do
    read -p "${WARN}Installation will happen in $(pwd), ok? [y|n|yes|no]${NC}"
    case $yn in
        y|yes)
            echo -e "${SUCCESS}Alright, let's go! 🚀${NC}"
            break
            ;;
        n|no)
            echo -e "${WARN}Ok. Please create the directory ('mkdir <project-dir>'), navigate into it ('cd <project-dir>') and run this script again.${NC}"
            exit 1
            ;;
        *)
            echo -e "${WARN}Please answer yes or no.${NC}"
            ;;
    esac
done

# Clone repository
git clone https://github.com/tjventurini/wordpress-setup.git .

# Remove `.git` directory for fresh start.
rm -rf ./.git

# Sucess message and further instructions
echo -e "${SUCCESS}WordPress setup ready 🎉${NC}"
echo -e "${WARN}Run 'make init' to initialize the project. The wizard will guide you through 🧙‍♂️${NC}"