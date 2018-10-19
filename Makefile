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
