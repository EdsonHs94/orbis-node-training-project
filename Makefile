include ./makefiles/task.mk
include ./makefiles/deploy-ghpages.mk

.DEFAULT_GOAL := help
.PHONY : resources

# Global variables
IMAGE				= tsfran/orbis-training-docker:1.0.0
WORKDIR			= /app

install:
	docker run -v $(PWD):/app -w $(WORKDIR) $(IMAGE) npm install

start:
	docker run -v $(PWD):/app -w $(WORKDIR) -p 3030:3030 -p 35729:35729 $(IMAGE) npm start

release:
	docker run -v $(PWD):/app -w $(WORKDIR) $(IMAGE) npm run release

greet:
	docker run -e VAR="Luis" -it -v $(PWD):/app -w $(WORKDIR) $(IMAGE) sh resources/example.sh


## Target Help ##
help:
	@printf "\033[31m%-22s %-59s %s\033[0m\n" "Target" " Help" "Usage"; \
	printf "\033[31m%-22s %-59s %s\033[0m\n"  "------" " ----" "-----"; \
	grep -hE '^\S+:.*## .*$$' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' | sort | awk 'BEGIN {FS = ":"}; {printf "\033[32m%-22s\033[0m %-58s \033[34m%s\033[0m\n", $$1, $$2, $$3}'
