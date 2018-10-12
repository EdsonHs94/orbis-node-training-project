create a image -> docker image build -t edson/orbis-training-docker:0.1.0 .
docker login -> docker login
push image -> docker push edsonhs94/orbis-training-docker:0.1.0
create a tag -> docker tag edsonhs94/orbis-training-docker:0.1.0 edsonhs94/orbis-training-docker:0.2.0

###COMANDOS
> docker run -v $PWD:/app -w /app tsfran/orbis-training-docker:1.0.0 npm install