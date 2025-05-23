---
layout: post
title: Cómo usar LaTeX en los foros de consulta
description: Guía de como escribir expresiones de LaTeX en los foros de consultas de los entornos virtuales de la UNED.
date: 2023-12-06T18:00:00-06:00
author: edalorzo
image: '/images/42.jpg'
tags: [latex]
commissions: [cofoma]
toc: true
featured: true
---

Para aquellos que estamos llevando alguna materia de matemática y, especialmente, para los que somos estudiantes de carreras de ciencias en exactas, puede ser fundamental realizar consultas en los foros del entorno virtual utilizando lenguaje matemático.

Algunos recurren a subir imágenes con fotografías de sus libros o de cosas que han escrito ellos mismos manualmente en papel. Sin embargo, el campus virtual, montado sobre la plataforma Moodle, soporta el uso de $$\LaTeX$$ en los foros. $$\LaTeX$$ es un lenguaje de composición tipográfica especialmente utilizado en matemáticas por su versatilidad para escribir expresiones de lenguaje matemático. 

En el foro de consultas es posible escribir expresiones en $$\LaTeX$$, el cual soporta los dos modos tradicionales de expresiones matemáticas: en línea y el modo display.

### Modo en Línea

El modo en línea se suele usar para escribir fórmulas matemáticas que son parte del mismo párrafo, mientras que el modo display se usa para escribir fórmulas matemáticas que deberían ir en su propio párrafo aparte.

Para escribir una expresión matemática en línea, colocamos los comandos de $$\LaTeX$$ entre un par de paréntesis redondos, precedidos de una barra inclinada `\( \)`.

Por ejemplo `\(c = \sqrt{a^2 + b^2}\)` produce la salida $$c = \sqrt{a^2 + b^2}$$ que es parte de este mismo párrafo.

Algunos podrían estar familiarizados con herramientas de $$\LaTeX$$ que permiten escribir este tipo de expresiones entre dos signos de dólar, `$ $`, sin embargo, esta técnica *no funciona* en el entorno virtual. Por lo tanto, en los foros del entorno virtual se debe usar la técnica de los paréntesis redondos descrita arriba.

[Regresar la índice](#toc)

### Modo Display

Por otro lado, si la expresión que queremos escribir debe ocupar su propio párrafo separado, podemos colocar nuestro código $$\LaTeX$$ entre un par de paréntesis cuadrados, ambos precedidos de una barra inclinada: `\[ \]`.

Igualmente, algunos podrían estar familiarizados con herramientas de $$\LaTeX$$ que permiten escribir este tipo de expresiones entre dobles signos de dólar, `$$ $$`. Contrario al caso anterior, esta técnica sí funciona en el entorno virtual. En ese caso, se puede usar cualquiera de las dós técnicas en los foros de consulta.

Por ejemplo, `\[a = \frac{b \cdot h}{2}\]`, se convierte en algo como lo siguiente: 

$$a = \frac{b \cdot h}{2}$$

Y el mismo resultado se puede producir usando los dobles signos de dolar, por ejemplo `$$a = \frac{b \cdot h}{2}$$`. 

Sabiendo esto, escribir expresiones matemáticas en el entorno virtual se puede volver algo relativamente sencillo una vez que dominamos los comandos básicos de $$\LaTeX$$. Abajo les dejo algunas referencias que pueden resultar de gran ayuda.

A continuación les dejo unos ejemplos de como escribir algunos de los comandos de $$\LaTeX$$ más útiles que he ido aprendiendo al llevar diferentes cursos de matemática de la UNED y que les pueden servir para realizar consultas en los foros de consultas cuando estén llevando algún curso de naturaleza matemática.

[Regresar la índice](#toc)

### Comandos de LaTeX

A continuación se detallan algunos de los comandos de LaTeX más útiles con un breve ejemplo de cómo usarlo en el foro de consultas.

#### Fundamentos

| $$a^{n}$$                  | `\(a^{n}\)`                  |
| $$\binom{n}{k}$$           | `\(\binom{n}{k}\)`           |
| $$\dfrac{a}{b}$$           | `\(\dfrac{a}{b}\)`           |
| $$\sqrt{a}$$               | `\(\sqrt{a}\)`               |
| $$\sqrt[n]{a}$$            | `\(\sqrt[n]{a}\)`            |
| $$a_1^2$$                  | `\(a_1^2\)`                  |
| $$\infty$$                 | `\(\infty\)`                 |
| $$\int_{i=1}^n$$           | `\(\int_{i=1}^n\)`           |
| $$\lim_{x\to\infty} f(x)$$ | `\(\lim_{x\to\infty} f(x)\)` |

[Regresar la índice](#toc)

#### Operadores

| $$a \times b$$             | `\(a \times b\)`             |
| $$a \cdot b$$              | `\(a \cdot b\)`              |
| $$a \div b$$               | `\(a \div b\)`               |
| $$a \neq b$$               | `\(a \neq b\)`               |
| $$a \approx b$$            | `\(a \approx b\)`            |
| $$a \lt b$$                | `\(a \lt b\)`                |
| $$a \leq b$$               | `\(a \leq b\)`               |
| $$a \gt b$$                | `\(a \gt b\)`                |
| $$a \geq b$$               | `\(a \geq b\)`               |

[Regresar la índice](#toc)

#### Lógica

| $$p \wedge q$$                        | `\(p \wedge q\)`                        |
| $$p \vee q$$                          | `\(p \vee q\)`                          |
| $$\neg{p}$$                           | `\(\neg{p}\)`                           |
| $$p \rightarrow q$$                   | `\(p \rightarrow q\)`                   |
| $$p \leftrightarrow q$$               | `\(p \leftrightarrow q\)`               |
| $$p \Rightarrow q$$                   | `\(p \Rightarrow q\)`                   |
| $$p \Leftrightarrow q$$               | `\(p \Leftrightarrow q\)`               |
| $$P \equiv Q$$                        | `\(P \equiv Q\)`                        |
| $$\forall{x} \in X$$                  | `\(\forall{x} \in X\)`                  |
| $$\exists{y} \in Y$$                  | `\(\exists{y} \in Y\)`                  |
| $$\sum_{i=1}^{\infty} \frac{1}{n^s}$$ | `\(\sum_{i=1}^{\infty} \frac{1}{n^s}\)` |
| $$\prod_p \frac{1}{1 - p^{-s}}$$      | `\(\prod_p \frac{1}{1 - p^{-s}}\)`      |
| $$p \Rightarrow q, p, \therefore q$$  | `\(p \Rightarrow q, p, \therefore q\)`  |

[Regresar la índice](#toc)

#### Conjuntos:

| $$\{x_1,\dots,x_n\}$$              | `\(\{x_1,\dots,x_n\}\)`             |
| $$\{x \mid p(x)\}$$                | `\(\{x \mid p(x)\}\)`                |
| $$a \mid b$$                       | `\(a \mid b\)`                       |
| $$a \not\mid b$$                   | `\(a \not\mid b\)`                   |
| $$x \in X$$                        | `\(x \in X\)`                        |
| $$x \not\in X$$                    | `\(x \not\in X\)`                    |
| $$\mid X \mid$$                    | `\(|x|\)`                            |
| $$\overline{X}$$                   | `\(\overline{X}\)`                   |
| $$\emptyset$$                      | `\(\emptyset\)`                      |
| $$X \subseteq Y$$                  | `\(X \subseteq Y\)`                  |
| $$X \subset Y$$                    | `\(X \subset Y\)`                    |
| $$X \not\subseteq Y$$              | `\(X \not\subseteq Y\)`              |
| $$X \not\subset Y$$                | `\(X \not\subset Y\)`                |
| $$\mathcal{P}(x)$$                 | `\(\mathcal{P}(x)\)`                 |
| $$X \cup Y$$                       | `\(X \cup Y\)`                       |
| $$X \cap Y$$                       | `\(X \cap Y\)`                       |
| $$X \times Y$$                     | `\(X \times Y\)`                     |
| $$\bigcup_{i=1}^{3}{A_i}$$         | `\(\bigcup_{i=1}^{3}{A_i}\)`         |
| $$\bigcup_{i \in \{1,2,3\}}{A_i}$$ | `\(\bigcup_{i \in \{1,2,3\}}{A_i}\)` |
| $$\bigcap_{i=1}^{3}{A_i}$$         | `\(\bigcap_{i=1}^{3}{A_i}\)`         |
| $$\bigcap_{i \in \{1,2,3\}}{A_i}$$ | `\(\bigcap_{i \in \{1,2,3\}}{A_i}\)` |
| $$(x,y)$$                          | `\((x,y)\)`                          |
| $$(x_1,\dots,y_n)$$                | `\((x_1,\dots,y_n)\)`                |
| $$\mathbb{N}$$                     | `\(\mathbb{N}\)`                     |
| $$\mathbb{Z}$$                     | `\(\mathbb{Z}\)`                     |
| $$\mathbb{Q}$$                     | `\(\mathbb{Q}\)`                     |
| $$\mathbb{R}$$                     | `\(\mathbb{R}\)`                     |
| $$\mathbb{I}$$                     | `\(\mathbb{I}\)`                     |
| $$\mathbb{C}$$                     | `\(\mathbb{C}\)`                     |

[Regresar la índice](#toc)

#### Relaciones:

| $$\aleph$$                              | `\(\aleph\)`                              |
| $${}_{a}\mathfrak{R}_{b}$$              | `\({}_{a}\mathfrak{R}_{b}\)`              |
| $$[x]$$                                 | `\([x]\)`                                 |
| $$\lfloor x \rfloor$$                   | `\(\lfloor x \rfloor\)`                   |
| $$\lceil x \rceil$$                     | `\(\lceil x \rceil\)`                     |
| $$\mathfrak{R}^{-1}$$                   | `\(\mathfrak{R}^{-1}\)`                   |
| $$\mathfrak{R}_1 \circ \mathfrak{R}_2$$ | `\(\mathfrak{R}_1 \circ \mathfrak{R}_2\)` |

[Regresar la índice](#toc)

#### Funciones

| $$f(x)$$      | `\(f(x)\)`      |
| $$f:X \to Y$$ | `\(f:X \to Y\)` |
| $$f \circ g$$ | `\(f \circ g\)` |
| $$f^{-1}$$    | `\(f^{-1}\)`    |

[Regresar la índice](#toc)

#### Geometría

| $$P,Q,R$$                      | `\(P,Q,R\)`                      |
| $$\overline{PQ}$$              | `\(\overline{PQ}\)`              |
| $$\overleftrightarrow{PQ}$$    | `\(\overleftrightarrow{PQ}\)`    |
| $$\overrightarrow{PQ}$$        | `\(\overrightarrow{PQ}\)`        |
| $$\angle{ABC}$$                | `\(\angle{ABC}\)`                |
| $$\measuredangle{ABC}$$        | `\(\measuredangle{ABC}\)`        |
| $$m\angle{ABC}=r^{\circ}$$     | `\(m\angle{ABC}=r^{\circ}\)`     |
| $$\angle{1}\cong\angle{2}$$    | `\(\angle{1}\cong\angle{2}\)`    |
| $$\triangle{ABC}$$             | `\(\triangle{ABC}\)`             |
| $$\triangle{ABC} \sim \triangle{DEF}$$ | `\(\triangle{ABC} \sim \triangle{DEF}\)` |
| $$l \perp m$$                  | `\(l \perp m\)`                  |
| $$l \parallel m$$              | `\(l \parallel m\)`              |
| $$l \not\perp m$$              | `\(l \not\perp m\)`              |
| $$l \not\parallel m$$          | `\(l \not\parallel m\)`          |
| $$\alpha,\beta,\gamma,\theta$$ | `\(\alpha,\beta,\gamma,\theta\)` |
| $$\pi$$                        | `\(\pi\)`                        |
| $$\overrightarrow{a}$$         | `\(\overrightarrow{a}\)`         |

[Regresar la índice](#toc)

#### Cancelación de Expresiones

En algunos casos puede resultar util representar expresiones que se cancelan entre sí. Para lograr esto se debe incluir al inicio de tu entrada la siguiente macro:

```tex
\(\require{cancel}\)
```

Esto nos permite hacer cosas como la siguiente:

$$\frac{x^2-1}{(x+2)(x-1)} = \frac{\cancel{(x-1)}(x+1)}{(x+2)\cancel{(x-1)}}$$

Que se logra usando el comando `\cancel`, como se muestra en este ejemplo:

```tex
\frac{x^2-1}{(x+2)(x-1)} = \frac{\cancel{(x-1)}(x+1)}{(x+2)\cancel{(x-1)}}
```

A veces se puede utilizar para indicar la simplificación de fracciones usando el comando `\cancelto{}{}`:

$$\frac{\cancelto{1}{2}}{\cancelto{1}{5}} \cdot \frac{\cancelto{3}{15}}{\cancelto{3}{6}} = \frac{3}{3} = 1$$

Que se produce de la siguiente expresión:

```tex
\frac{\cancelto{1}{2}}{\cancelto{1}{5}} \cdot \frac{\cancelto{3}{15}}{\cancelto{3}{6}} = \frac{3}{3} = 1
```

[Regresar la índice](#toc)

#### Colores

Para utilizar colores simplemente importa la macro de colores al inicio de tu entrada en el blog:

```tex
\(\require{color}\)
```

Esto nos permite agregar colores a nuestras expresiones matemáticas como por ejemplo:

```tex
\[\frac{\color{blue}{x^2-1}}{\color{red}{(x+1)}\color{brown}{(x-2)}}\]
```

Que produce la salida:

$$\frac{\color{blue}{x^2-1}}{\color{red}{(x+1)}\color{brown}{(x-2)}}$$

[Regresar la índice](#toc)

#### Cajas

Puede resultar conveniente encerrar expresiones en una caja para resaltar algún resultado. Quizás la manera más sencilla de lograr este objetivo es mediante el comando `\boxed{}`, soportado por el paquete amsmath.

```tex
\boxed{\cos^2 \theta + \sin^2 \theta = 1}
```

Que produce una salida como la siguiente:

$$
\boxed{\cos^2 \theta + \sin^2 \theta = 1}
$$

No obstante, si se desea un poco más de control sobre rel resultado, esto se puede lograr logra importando, al inicio de tu entrada de blog, la siguiente macro:

```tex
\(\require{bbox}\)
```

Entonces podrás crear una caja de tu color favorito alrededor de una expresión matemática haciendo algo como:


```tex
\[\bbox[10px, border: 2px solid red]{\frac{r}{R} = \frac{1}{\sqrt{2}} = \frac{\sqrt{2}}{2}}\]
```

Que produce la salida:

$$\bbox[10px, border: 2px solid red]{\frac{r}{R} = \frac{1}{\sqrt{2}} = \frac{\sqrt{2}}{2}}$$

Que crear una caja con 10 pixeles en sus márgenes, con una línea sólida de dos pixeles de color rojo. Para colores puedes usar nombres de colores básicos en inglés.

[Regresar la índice](#toc)

#### Operaciones Multilíneas

En ciertas ocasiones puede ser útil desarrollar una ecuación que ocupa múltiples lineas, como el ejemplo siguiente:

$$\begin{aligned}\cos{43^{\circ}} &= \dfrac{a}{27^{\circ}} \\27^{\circ}\cos{43^{\circ}} &= a\end{aligned}$$

Para conseguir este efecto, debemos escribir el código $$\LaTeX$$ entre dos expresiones de alineamiento como se muestra a continuación:

```tex
\[\begin{aligned} \end{aligned}\]
```

Para producir una nueva línea se utiliza el operador `\\`, y para indicar que las expresiones se deben alinear en algún punto se utiliza el operador `&` para marcar el punto de alineamiento. Por ejemplo, la expresión de arriba se escribe como:

```tex
\[\begin{aligned}
\cos{43^{\circ}} &= \dfrac{a}{27^{\circ}} \\
27^{\circ}\cos{43^{\circ}} &= a
\end{aligned}\]
```

Donde se puede ver que el punto de alineamiento es el punto antes del signo de igual y por eso ambas expresiones están alineadas en ese signo: `&=`. También se puede ver que hay un retorno de carro (o una nueva línea) justo despues de `\\`. 

Con algo de paciencia y cuidado es posible escribir expresiones multilíneas complejas como la siguiente:

$$\begin{aligned} 1 + S(n) &= S(1 + n) \;& \text{[Def. 1, (b)]} \\ &= S(n + 1) \;& \text{[Hipótesis inductiva]} \\ &= (n + 1) + 1 \;& \text{[Def. 1, (a)]} \\ &= S(n) + 1 \;& \text{[Def. 1, (a)]}\end{aligned}$$

[Regresar la índice](#toc)

### Otras Herramientas Útiles

A menudo, al escribir código $$\LaTeX$$ en el foro, uno no está muy seguro de si lo ha hecho bien hasta que se publica la entrada en el foro. Con frecuencia, uno descubre que se equivocó en algún comando, y ya en este punto no queda más remedio que editar la entrada en el foro para corregir el problema. Una forma de evitar este tipo de errores es por medio de escribir el código $$\LaTeX$$ en alguna otra herramienta. Una que me gusta por su sencillez es [CodeCogs][1]. Se Puede escribir el código $$\LaTeX$$ ahí y luego nada más se pasa al foro entre los paréntesis descritos en esta publicación.

Otra alternativa es utilizar algún otro editor popular como [Overleaf][2] o [TexStudio][3] para escribir las entradas del foro en el editor y luego pasarlas al foro una vez que uno está satisfecho. Ambos editores soportan los mismos paréntesis de $$\LaTeX$$ que el foro de consultas y la plataforma virtual.

[Regresar la índice](#toc)

### Lectura Adicional

Si quieres aprender más, puedes consultar innumerables recursos en Internet, pero acá abajo dejo algunos de mis favoritos.

* [Listado de Comandos de LaTeX para Estudiantes de Matemática][4]
* [La Introducción no tan Corta de LaTeX][5]
* [Lista de Comandos Soportados por MathJax][6]
* [Usar Notación TeX en Moddle][7]

[Regresar la índice](#toc)

[1]: https://latex.codecogs.com/eqneditor/editor.php?lang=es-es
[2]: https://www.overleaf.com/project
[3]: https://www.texstudio.org/
[4]: https://mirrors.ucr.ac.cr/CTAN/info/undergradmath/undergradmath.pdf
[5]: https://mirrors.ucr.ac.cr/CTAN/info/lshort/spanish/lshort-letter.pdf
[6]: https://docs.mathjax.org/en/latest/input/tex/macros/index.html
[7]: https://docs.moodle.org/403/en/Using_TeX_Notation
