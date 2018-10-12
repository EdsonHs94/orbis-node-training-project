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