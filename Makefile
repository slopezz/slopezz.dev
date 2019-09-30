#!/usr/bin/env make

.PHONY: server help

.DEFAULT_GOAL := help

server: ## Start hugo server
	hugo --i18n-warnings --gc --minify server

help: ## Print this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
