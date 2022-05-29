#!/usr/bin/env bash

# Get project dir
read -p "Enter project dir: " PROJECT_DIR
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
echo "Done! 🚀"