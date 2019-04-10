# all: compileGO compileJS compilePY

help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

## ----------------------
## ------ DOCKER --------
## ----------------------
dockerize-dev: docker-build-dev docker-push-dev ## build and push dev proxy
dockerize-prod: docker-build-prod docker-push-prod ## build and push prod proxy

# Building the docker builds
docker-build-prod: ## build the dev proxy image 
	docker-compose -f docker-compose.yaml build
docker-build-dev: ## build the prod proxy image
	docker-compose -f docker-compose-dev.yaml build
# Pushing the docker builds
docker-push-dev: ## push the dev image
	docker push olamai/envoy-proxy-dev:0.0.1
docker-push-prod: ## push the prod image
	docker push olamai/envoy-proxy:0.0.1

# Running and stopping the dev proxy locally
docker-up-dev: ## start a local dev proxy
	@echo "=============starting dev proxy locally============="
	docker-compose -f docker-compose-dev.yaml up -d
docker-down-dev: ## shut down the local dev proxy server
	docker-compose -f ./docker-compose-dev.yaml down

docker-logs: ## tail the logs
	docker-compose -f docker-compose-dev.yaml logs -f

docker-clean: down ## shuts down the API and then clears out saved Docker images 
	@echo "=============cleaning up============="
	rm -f api
	docker system prune -f
	docker volume prune -f