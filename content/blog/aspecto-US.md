+++
date = '2026-04-06T12:20:51+02:00'
draft = true
title = 'Aspecto US'
+++

Para poner uno colres más corporativos se ha creado en el proyecto un fichero CSS que personaliza el tema de la Universidad de Sevilla. Además debemos cambiar en el fichero `hugo.toml` el tema que crearemos como "US"

```hugo.toml

# Style options: default (light-blue), blue, green, marsala, pink, red, turquoise, violet
    style = "US"

```


Copiamos el fichero `style.red.css` como `style.US.css` y en este último redefinimos los colores, lo que se ha cambiado respecto a los otros ficheros de aspecto es la definicion de variables de **root:**

```css
/* Themed colors */
:root {
  /* color principal */
  --primary-accent: #b10035;       /* rojo institucional */
  /* variantes del rojo */
  --navbar-border-top: #8a0029;    /* rojo más oscuro */
  --button-border: #90002c;
  --link-focus: #a00030;
  /* sombras */
  --form-shadow: rgba(177, 0, 53, 0.6);
  /* rojo claro derivado */
  --pagination-bg: #f4ccd6;
  /* hover principal */
  --link-hover-bg: #8a0029;
  /* foco navbar */
  --navbar-focus: #e59aa9;

  /* colores auxiliares nuevos */
  --secondary-accent: #fabb00;     /* amarillo */
  --neutral-accent: #26a1a0;       /* gris verdoso */
}
```