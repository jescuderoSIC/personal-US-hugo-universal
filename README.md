# personal-US-hugo-universal
Repositorio para crear páginas personales en personal.us.es basadas en Hugo

## Instalación del entorno

Supondremos que el ordenador de quien va a crear la página web es un ordenador Windows relativamente moderno. Para Instalar el entorno de desarrollo de la página web vamos a tener que instalar un script que se encuentra en este repositorio.

`instalar-entorno-hugo.ps1`

## Primeros pasos para desarrollar

Una vez instalado el entorno arrancamos el servidor web de HUGO para visualizar los cambios que hacemos en nuestras páginas:

```PowerShell
hugo server -D
```

Abrimos el navegador web con la dirección `http://localhost:1313` que por ejemplo lo tenemos en la pantalla derecha mientras en la izquierda tenemos el Visual Studio Code y EMPEZAMOS A REALIZAR CAMBIOS.

LOS CAMBIOS A REALIZAR SE BASAN EN BUSCAR y REEMPLAZAR CONTENIDO EN LAS CARPETAS `content` y `static` (ficheros de imágenes que apoyan visualmente el contenido), SI NO SABE HACER MÁS NO HAGA MÁS, DE MOMENTO SÓLO CON ESTO ES NECESARIO.

RELEEA LA FRASE ANTERIOR UN PAR DE VECES.

Cuando acabemos pulsamos CTRL+C. 

Cambiamos en el fichero `hugo.toml` la variable `baseurl` por el valor que le corresponda en el hosting donde la página web va a estar configurada y tecleamos en la linea de comandos:

```PowerShell
hugo 
```

Esto crea en la carpeta `public` la versión final de nuestro sitio web, el último paso consistirá en subir todos los ficheros de la anteriormente mencionada carpeta a nuestro hosting


## Página web de demostración

La página de demostración está en [https://jescuderosic.github.io/personal-US-hugo-universal/](https://jescuderosic.github.io/personal-US-hugo-universal/)
