#!/usr/bin/env bash

# Load config.
source ./scripts/setup-colors.sh

# Clean up.
rm ./.env && echo -e "${SUCCESS}Removed .env ✅${NC}"
rm ./docker-compose.yml && echo -e "${SUCCESS}Removed docker-compose.yml ✅${NC}"

# Clear wordpress
echo -e "${WARN}Clean up wordpress files?${NC}"
select yn in "yes" "no"; do
    case $yn in
        yes)
            echo -e "Cleaning up wordpress files ..."
            rm -r ./data/wordpress/*
            echo -e "${SUCCESS}Cleaned ./data/wordpress directory ✅${NC}"
            break
            ;;
        *)
            echo -e "${SUCCESS}Ok. Not cleaning wordpress files ... ✅${NC}"
            break
            ;;
    esac
done

# Prune containers
echo -e "${WARN}Run docker prune?${NC}"
select yn in "yes" "no"; do
    case $yn in
        yes)
            echo -e "Running docker prune ..."
            docker system prune --volumes --all --force
            echo -e "${SUCCESS}Docker prune done! ✅${NC}"
            break
            ;;
        *)
            echo -e "${SUCCESS}Ok. Not running docker prune ... ✅${NC}"
            break
            ;;
    esac
done

echo -e "${SUCCESS}WordPress setup removed 🧹${NC}"