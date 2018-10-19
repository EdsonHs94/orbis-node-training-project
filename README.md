create a image -> docker image build -t edson/orbis-training-docker:0.1.0 .
docker login -> docker login
push image -> docker push edsonhs94/orbis-training-docker:0.1.0
create a tag -> docker tag edsonhs94/orbis-training-docker:0.1.0 edsonhs94/orbis-training-docker:0.2.0

###COMANDOS
> docker run -v $PWD:/app -w /app tsfran/orbis-training-docker:1.0.0 npm install

> docker inspect [IDCONTAINER]
> docker run --network orbis-node-training-project_default node:10.10.0-slim curl http://172.20.02:3030/

> docker run -it -v $PWD:/app -w /app tsfran/orbis-training-docker:1.0.0 sh resources/example.sh

> docker run -e VAR="Luis" -it -v $(pwd):/app -w /app tsfran/orbis-training-docker:1.0.0 sh resources/example.sh

> docker run --entrypoint resources/entrypoint.sh -v $(pwd):/app:rw -w /app tsfran/orbis-training-docker:1.0.0