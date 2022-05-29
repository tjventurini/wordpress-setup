#!/usr/bin/env bash

# Setup colors
ERROR=$(printf '\033[0;31m')
SUCCESS=$(printf '\033[0;32m')
WARN=$(printf '\033[0;33m')
NC=$(printf '\033[0m') # No Color

# Get project dir
read -p "${WARN}Enter project dir: ${NC}" PROJECT_DIR
echo ""

# Clone repository
git clone https://github.com/tjventurini/wordpress-setup.git $PROJECT_DIR

# Enter project dir
cd $PROJECT_DIR

# Do stuff in project dir
rm -rf .git
rm data/wordpress/.gitignore
rm data/mysql/.gitignore

# Final message
echo "${SUCCESS}Done! 🚀${NC}"