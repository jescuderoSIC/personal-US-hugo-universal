+++
date = '2026-04-06T20:42:50+02:00'
title = 'Markdown Cheatsheet'
banner = "img/banners/banner-Markdown.png"
authors = ["jescudero"]
summary="Markdown es un lenguaje de marcado ligero creado por John Gruber en 2004. Permite escribir texto plano con símbolos simples (#, *, -, >) que se convierte fácilmente a HTML válido. Su filosofía es que el documento sea legible incluso sin procesar."
+++

Markdown es un lenguaje de marcado ligero creado por John Gruber en 2004. Permite escribir texto plano con símbolos simples (#, *, -, >) que se convierte fácilmente a HTML válido. Su filosofía es que el documento sea legible incluso sin procesar.

Algunas de las ventajas de Markdown son:
- Curva de aprendizaje mínima: Se domina en minutos, no requiere conocimientos técnicos avanzados.
- Legibilidad universal: El texto sin formato es claro y comprensible antes de ser renderizado.
- Portabilidad: Funciona en cualquier editor de texto, sistema operativo o plataforma.
- Conversión flexible: Puede transformarse a HTML, PDF, Word, ePub y otros formatos.
- Amplio ecosistema: Integrado en GitHub, foros, CMS, wikis, aplicaciones de notas (Obsidian, Notion) y generadores de sitios estáticos como Hugo.
- Enfoque en el contenido: Permite concentrarse en escribir sin distracciones visuales de formato complejo.
- Control de versiones ideal: Al ser texto plano, funciona perfectamente con Git y sistemas de control.

Veamos cómo hacer algunas cosas con Markdown

#### Texto

```markdown
*Italica* Texto en itálica
**Negrita** Texto en negrita
_Enfatizado_ Texto Enfatizado
`código` texto como código
```
*Italicas* Texto en itálica

**Negrita** Texto en negrita

_Enfatizado_ Texto Enfatizado

#### Niveles de Texto 

![Títulos Markdown](../../../../../blog/sobreHugo/markdownTitulos.png)

#### Incluir una imagen

Una imagen que está en Internet

 ```markdown 
 ![Dandelions](https://live.staticflickr.com/2899/13977533359_80f905f013.jpg)
 ```

 ![Dandelions](https://live.staticflickr.com/2899/13977533359_80f905f013.jpg)

Una imagen que está en nuestro sitio web

```markdown
![Detalle de una gota](../../../../../blog/sobreHugo/9435606622_82ca8c79c7_b.jpg)
```

![Detalle de una gota](../../../../../blog/sobreHugo/9435606622_82ca8c79c7_b.jpg)

Y con un poco de html podemos tener más control sobre las imágenes y su aspecto.

```html
<figure style="border: 1px solid #ccc; padding: 10px; display: inline-block; text-align: center;">
    <img src="../../../../../blog/sobreHugo/9435606622_82ca8c79c7_b.jpg" width="400px" alt="gota de agua">
    <figcaption style="margin-top: 8px;">Una gota de agua sobre una flor roja</figcaption>
</figure>
```
<figure style="border: 1px solid #ccc; padding: 10px; display: inline-block; text-align: center;">
    <img src="../../../../../blog/sobreHugo/9435606622_82ca8c79c7_b.jpg" width="400px" alt="gota de agua">
    <figcaption style="margin-top: 8px;">Una gota de agua sobre una flor roja</figcaption>
</figure>



#### Citar una frase

```markdown
> Saber un poco de HTML nunca le hizo daño a nadie.
>
> _Sabiduría popular_
```

>
> Saber un poco de HTML nunca le hizo daño a nadie.
>
> _Sabiduría popular_


#### Incluir un video de YTB

Basta con pulsar en YTB el botón de compartir y escoger la opción de insertar. En el fichero toml ya hemos hecho los ajustes necesarios para que acepte código HTML.

```html
<iframe width="560" height="315" src="https://www.youtube.com/embed/gs1CU-PQtvc?si=PyO9C7_4cuLjmQ2i" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
```

<iframe width="560" height="315" src="https://www.youtube.com/embed/gs1CU-PQtvc?si=PyO9C7_4cuLjmQ2i" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

#### Añadir un bloque de código fuente

```text
``go {linenos=inline hl_lines=[3,"6-8"] style=emacs}
package main

import "fmt"

func main() {
    for i := 0; i < 3; i++ {
        fmt.Println("Value of i:", i)
    }
}
``
```


```go {linenos=inline hl_lines=[3,"6-8"] style=emacs}
package main

import "fmt"

func main() {
    for i := 0; i < 3; i++ {
        fmt.Println("Value of i:", i)
    }
}
```