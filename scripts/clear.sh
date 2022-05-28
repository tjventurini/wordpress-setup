#!/usr/bin/env bash

# Load config.
source ./scripts/setup-colors.sh

# Clean up.
rm ./.env && echo -e "${SUCCESS}Removed .env ✅${NC}"
rm ./docker-compose.yml && echo -e "${SUCCESS}Removed docker-compose.yml ✅${NC}"

# Clear database
echo -e "${WARN}Clean up database files?${NC}"
select yn in "yes" "no"; do
    case $yn in
        yes)
            echo -e "Cleaning up database files ..."
            find ./data/mysql/{*,} \! -name ".gitignore" -delete
            echo -e "${SUCCESS}Cleaned ./data/mysql directory ✅${NC}"
            break
            ;;
        *)
            echo -e "${SUCCESS}Ok. Not cleaning database files ... ✅${NC}"
            break
            ;;
    esac
done

# Clear wordpress
echo -e "${WARN}Clean up wordpress files?${NC}"
select yn in "yes" "no"; do
    case $yn in
        yes)
            echo -e "Cleaning up wordpress files ..."
            find ./data/wordpress/{*,} \! -name ".gitignore" -delete
            echo -e "${SUCCESS}Cleaned ./data/wordpress directory ✅${NC}"
            break
            ;;
        *)
            echo -e "${SUCCESS}Ok. Not cleaning wordpress files ... ✅${NC}"
            break
            ;;
    esac
done

echo -e "${SUCCESS}WordPress setup removed 🧹${NC}"