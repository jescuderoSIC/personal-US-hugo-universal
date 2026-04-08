+++
date = '2026-03-07T15:37:12+02:00'
title = 'Matemáticas con Hugo'
banner = "img/banners/banner-Hugo.jpg"
summary = "Esta página web pretende comprobar cómo se pueden procesar notación matemática con Hugo"
authors = ["jescudero"]
math = true
+++

### Resolución de una ecuación de segundo grado

Una ecuación de segundo grado tiene la forma general:

$$
ax^2 + bx + c = 0
$$

donde:

- $a$, $b$ y $c$ son números reales
- $a \neq 0$

---

#### 1. Normalización de la ecuación

Dividimos toda la ecuación entre $a$:

$$
x^2 + \frac{b}{a}x + \frac{c}{a} = 0
$$

---

#### 2. Aislar el término independiente

Pasamos el término constante al otro lado:

$$
x^2 + \frac{b}{a}x = -\frac{c}{a}
$$

---

#### 3. Completar el cuadrado

Añadimos el término necesario para formar un cuadrado perfecto:

$$
\left(\frac{b}{2a}\right)^2
$$

Sumamos este valor en ambos lados:

$$
x^2 + \frac{b}{a}x + \left(\frac{b}{2a}\right)^2 =
-\frac{c}{a} + \left(\frac{b}{2a}\right)^2
$$

---

#### 4. Expresar como cuadrado perfecto

El lado izquierdo queda:

$$
\left(x + \frac{b}{2a}\right)^2
$$

El lado derecho:

$$
\frac{b^2 - 4ac}{4a^2}
$$

Por tanto:

$$
\left(x + \frac{b}{2a}\right)^2 =
\frac{b^2 - 4ac}{4a^2}
$$

---

#### 5. Extraer la raíz cuadrada

$$
x + \frac{b}{2a} =
\pm \frac{\sqrt{b^2 - 4ac}}{2a}
$$

---

#### 6. Despejar la incógnita

Finalmente obtenemos:

$$
x =
\frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$

---

#### 7. Fórmula general

La solución de la ecuación de segundo grado es:

$$
x_{1,2} =
\frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$

---

#### 8. Discriminante

Se define el **discriminante** como:

$$
\Delta = b^2 - 4ac
$$

- Si $\Delta > 0$ → dos raíces reales distintas.
- Si $\Delta = 0$ → una raíz real doble.
- Si $\Delta < 0$ → raíces complejas conjugadas.

---

#### 9. Ejemplo numérico

Resolver:

$$
2x^2 - 4x - 6 = 0
$$

Coeficientes:

- $a = 2$
- $b = -4$
- $c = -6$

Calculamos el discriminante:

$$
\Delta = (-4)^2 - 4(2)(-6) = 16 + 48 = 64
$$

Raíces:

$$
x = \frac{-(-4) \pm \sqrt{64}}{2(2)} = \frac{4 \pm 8}{4}
$$

Soluciones:

$$
x_1 = 3
$$

$$
x_2 = -1
$$