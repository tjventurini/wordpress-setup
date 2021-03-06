#!/usr/bin/env bash

# Load config.
source ./scripts/setup-colors.sh

# Clean up.
rm ./.env && echo -e "${SUCCESS}Removed .env โ${NC}"
rm ./docker-compose.yml && echo -e "${SUCCESS}Removed docker-compose.yml โ${NC}"

# Clear wordpress
echo -e "${WARN}Clean up wordpress files?${NC}"
select yn in "yes" "no"; do
    case $yn in
        yes)
            echo -e "Cleaning up wordpress files ..."
            find ./data/wordpress/{*,} \! -name ".gitignore" -delete
            echo -e "${SUCCESS}Cleaned ./data/wordpress directory โ${NC}"
            break
            ;;
        *)
            echo -e "${SUCCESS}Ok. Not cleaning wordpress files ... โ${NC}"
            break
            ;;
    esac
done

echo -e "${SUCCESS}WordPress setup removed ๐งน${NC}"