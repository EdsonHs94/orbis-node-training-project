  #### ¿Qué importancia tiene los tags en un proyecto?
 
 > Sirve para etiquetar la versión en la que se encuentra el proyecto.

 #### ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
 
 > El tag normal no tiene descripción.

 #### ¿Cómo se sube todos los tags de git que hay en mi local?
 
 > git push origin --tags

 #### ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
 
 > Basta con loguearse la primera vez.

 #### ¿Qué es y para qué sirve docker?
 
 > Es un programa de código abierto que permite que una aplicación Linux y sus dependencias se empaqueten como un contenedor.


 #### ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?

 > Docker trabaja con un docker engine mientras que VM trabaja con hipervisor. Docker solo descarga lo que necesitas para manejar tu proyecto.

 #### ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?

 > Si.

 #### ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?

 > Para reconocer que mandaré mi imagen a mi usuario de DockerHUB.

 #### ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?

 > Toma en cuenta la última versión.

 #### ¿Cuál es la diferencia entre docker ps y docker ps -a?
 
 > Lista de contenedores activos y el otro la lista de contenedores activos y no activos.
 
 #### ¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?

 > El -it sirve para el modo interactivo, sin eso el contenedor morira.

 #### ¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?

 > Para ejecutar la linea de comandos del contenedor.

 #### Ejecutar un comando dentro de un contenedor corriendo

 > docker exec nifty_bhaskara ls /app

 #### 1. ¿Es necesario especificar el `workdir` en docker?, ¿Porqué?

  > Si, porque ahi especifico el directorio para las directivas CMD

 #### 2. ¿Que hacen los siguientes comandos? 
 > -`docker ps` : Muestra los contenedores activos
 > -`docker pull`: Trae los cambios de la nube.
 > -`docker push`: Manda los cambios a la nube.
 > -`docker rm`: Elimina los contenedores.
 > -`docker rmi`: Elimina las imagenes.
 > -`docker run`: Inicia el contenedor a partir de una imagen.
 > -`docker tag`: Especifica una version de mi imagen.
 > -`docker search`: BUsca imagenes en el Docker HUB.
 > -`docker login`: Muestra el usuario y pasword a ingresar para mi DockerHUB. 
 > -`docker exec`: Ejecuta un proceso mientra mi contenedor está vivo.
 > -`docker build`: Contruye una imagen.
 > -`docker inspect`: Da información sobre construcciones controladas por Docker.
 > -`docker network`: Crea un redes en Docker.

#### 1. ¿Qué es bash? ¿Qué significa?

> Es un lenguaje que recibe instrucciones. Bourne-again shell.

#### 2. ¿Cómo ejecuto un archivo bash?

> sh example.sh

#### 3. ¿Qué pasa si no especifico en un `.sh`, la linea `#!/bin/bash`?

> Docker no reconoce como archivo bash, no lo reconoce como comando.

#### 4. ¿Se puede cambiar el modo bash (`/bin/bash`) a otro tipo de ejecución?

> Si.

#### 5. ¿Cómo se envía variables de entorno por Docker CLI y docker-compose?

> -e VAR="" ** $VAR

