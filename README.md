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

####PREGUNTAS
##### ¿Qué significa el comando -d?

> Hace referencia a un directorio.

##### ¿Porqué la sentencia comienza con @?

> Para poder ejecutar la sentencia en makefile.

##### ¿Para qué sirve el comando mkdir?

> Para crear un directorio.

##### Explicar lo que hace la función mkdir_deploy_dir

> Valida si la sentencia es un directorio y si no existe lo crea.

##### ¿Para qué sirve el uso de \?

> Se usa como salto de línea.

##### ¿Para qué sirve el uso de &&?

> Sirve para ejecutar más de un comando. 

##### ¿Qué función cumple usar los argumentos -rf?

> r: Proceso recursivo.
> f: Proceso forzado.

##### Explicar lo que hace la función git_init (linea por linea)

> Entra al directorio de mi branch.
> Luego borra todos los archivos con extension .git.
> Ejecuta el comando git init.

##### ¿Para qué sirve el uso de eval?

> Para definir nuevas variables a partir de otra función.

##### ¿Para qué sirve el uso de shell?

> Interpreta comandos.

##### ¿Para qué sirve el uso de git log --pretty=format:"%an"?

> Te trae el historia de los commit y lo filtra segun su nombre de autor.

##### ¿Cuál es la diferencia en usar git config y git config --global?

> Configura de forma global tu git.

##### Explicar lo que hace la función git_config (línea por línea)

> Ejecuta el comando git log para obtener el username.
> Lo guarda en una variable llamada GIT_USER_NAME.
> Lo mismo par el GIT_USER_EMAIL.
> Finalmente configura el email y el name mediante el comando git config.

##### ¿Para qué sirve el uso de awk?

> Es un lenguaje de script que está diseñado para procesar datos.

##### ¿Para qué sirve el uso de sed?

> Es un editor de texto que te permite modificar, eliminar entre otras acciones a un archivo.

##### ¿Para qué sirve el uso de git log --pretty=format:"%an"?

> Te trae el historia de los commit y lo filtra segun su nombre de autor.

##### Explicar lo que hace la función git_add_remote_repository

> Obtiene la url del repositorio y te imprime la segunda fila.
> Luego reemplaza 'https://' por una nueva cadena.
> Finalmente agrega la nueva variable del repositorio.


*   define create_branch_gh_pages
*	@cd $(GIT_BRANCH_DIR) && \
*	git checkout -b $(GIT_BRANCH)

##### Explicar lo que hace la función create_branch_gh_pages

> Entra al directorio del branch y crea una rama apartir de la variable GIT_BRANCH.

##### Explicar lo que hace la función copy_files_to_deploy

> Copia los archivos del directorio build y lo pega en el directorio de mi branch.

##### Explicar lo que hace la función git_add

> Entra al directorio del branch y agrega los cambios para luego mostrarlos en terminal.

##### Explicar lo que hace la función create_commit (línea por línea)
> Trae la descripcion del ultimo commit creado
> Luego entra al directorio del branch y crea un commit a partir de ese mensaje.

##### Explicar lo que hace la función git_push (línea por línea)
> Entra al directorio del branch.
> Luego manda los commits al origin.

##### Explicar lo que hace la función clean_workspace
> Elimina el directorio del branch.

##### ¿Para qué sirve el uso de ifeq?

> Valida la equivalencia de las sentencias.

##### ¿Para qué sirve el uso de strip?

> Valida si la cadena está vacía.

##### Explicar lo que hace la función show_deploy_url (línea por línea)

> Valida si el repositorio remote se encuentra vacío
> Encuentra el user name.
> Encuentra el nombre del repositorio.
> Imprime la url añadiendo el nombre de usuario y de repositorio.

##### ¿Qué hace cada paso?
> Llama a todas las funciones que fueron creadas el archivo deploy-ghpages.mk