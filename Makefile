init:
	@./scripts/init.sh

start:
	@./scripts/start.sh

up:
	@./scripts/start.sh

down:
	@./scripts/down.sh

stop:
	@./scripts/down.sh

restart: down up

tail:
	@docker compose logs -f

clear: down
	@./scripts/clear.sh

ps:
	@docker compose ps

setup-default:
	@./scripts/setup-default.sh