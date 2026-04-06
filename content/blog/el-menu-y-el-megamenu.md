+++
date = '2026-04-06T13:51:54+02:00'
draft = true
title = 'El Menu y el Megamenu'
+++

La mayoria de los sitios webs (al menos los que derivan de CMS) estan preparado para tener dos tipos de páginas. Las páginas webs como han sido concebidas desde el inicio, y un sistemas de post/noticias/novedades donde se va poniendo el contenido más reciente.

```hugo.toml
# Main menu
[menu]
[[menu.main]]
    name       = "Inicio"
    identifier = "menu.home"
    url        = "/"
    weight     = 1

[[menu.main]]
    name       = "Currículum"
    identifier = "menu.curriculum"
    url        = "/curriculum/"
    weight     = 2

[[menu.main]]
    parent     = "menu.curriculum"
    name       = "Formación"
    identifier = "menu.formacion"
    url        = "/curriculum/"
    weight     = 1

[[menu.main]]
    parent     = "menu.curriculum"
    name       = "Actividad Docente"
    identifier = "menu.actividaddocente"
    url        = "/curriculum/"
    weight     = 2

[[menu.main]]
    parent     = "menu.curriculum"
    name       = "Investigación"
    identifier = "menu.investigacion"
    url        = "/curriculum/"
    weight     = 3



[[menu.main]]
    name       = "Publicaciones"
    identifier = "menu.publicaciones"
    url        = "/publicaciones/"
    weight     = 3


[[menu.main]]
    name       = "Docencia"
    identifier = "menu.docencia"
    url        = "/docencia/"
    weight     = 4

[[menu.main]]
    name       = "Blog"
    identifier = "menu.blog"
    url        = "/blog/"
    weight     = 5

[[menu.main]]
    name       = "Contacto"
    identifier = "menu.contacto"
    url        = "/contacto/"
    weight     = 6

```