#!/usr/bin/env bash

read -p "Enter project name please:" $PROJECT_NAME
echo ""
git clone https://github.com/tjventurini/wordpress-setup.git $PROJECT_NAME
cd PROJECT_NAME
rm -rf .git
echo "Done! 🚀"