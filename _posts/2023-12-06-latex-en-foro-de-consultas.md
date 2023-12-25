---
layout: post
title: Como Usar LaTeX en los Foros de Consultas
description: Guía de como escribir expresiones de LaTeX en los foros de consultas de los entornos virtuales de la UNED.
date: 2023-12-06T18:00:00-06:00
author: edalorzo
image: '/images/42.jpg'
tags: [matemáticas,latex]
commissions: [cofoma]
featured: true
comments: true
share: true
---

Para aquellos que estamos llevando alguna materia de matemática y, especialmente, para los que somos estudiantes de carreras de ciencias en exactas, puede ser fundamental realizar consultas en los foros del entorno virtual utilizando lenguaje matemático.

Algunos recurren a subir imágenes con fotografías de sus libros o de cosas que han escrito ellos mismos manualmente en papel. Sin embargo, el campus virtual, montado sobre la plataforma Moodle, soporta el uso de $$\LaTeX$$ en los foros. $$\LaTeX$$ es un lenguaje de composición tipográfica especialmente utilizado en matemáticas por su versatilidad para escribir expresiones de lenguaje matemático. 

En el foro de consultas es posible escribir expresiones en $$\LaTeX$$, el cual soporta los dos modos tradicionales de expresiones matemáticas: en línea y el modo display.

### Modo en Línea

El modo en línea se suele usar para escribir fórmulas matemáticas que son parte del mismo párrafo, mientras que el modo display se usa para escribir fórmulas matemáticas que deberían ir en su propio párrafo aparte.

Para escribir una expresión matemática en línea, colocamos los comandos de LaTeX entre un par de paréntesis redondos, precedidos de una barra inclinada $$\texttt{\\}\texttt{(}\quad\texttt{\\}\texttt{)}$$.

Por ejemplo $$\texttt{\\}\texttt{(} \texttt{c = \sqrt{a^2 + b^2}} \texttt{\\}\texttt{)}$$ produce la salida $$c = \sqrt{a^2 + b^2}$$ que es parte de este mismo párrafo.

Algunos podrían estar familiarizados con herramientas de LaTeX que permiten escribir este tipo de expresiones entre dos signos de dólar, $$\texttt{\$   \$}$$, sin embargo, esta técnica *no funciona* en el entorno virtual. Por lo tanto, en los foros del entorno virtual se debe usar la técnica de los paréntesis redondos descrita arriba.

### Modo Display

Por otro lado, si la expresión que queremos escribir debe ocupar su propio párrafo separado, podemos colocar nuestro código $$\LaTeX$$ entre un par de paréntesis cuadrados precedidos de una barra inclinada: $$\texttt{\\}\texttt{[}\quad\texttt{\\}\texttt{]}$$.

Igualmente, algunos podrían estar familiarizados con herramientas de $$\LaTeX$$ que permiten escribir este tipo de expresiones entre dobles signos de dólar, $$\texttt{\$\$   \$\$}$$. Contrario al caso anterior, esta técnica sí funciona en el entorno virtual. En ese caso, se puede usar cualquiera de las dós técnicas en los foros de consulta.

Por ejemplo, $$\texttt{\\}\texttt{[}\texttt{a = \frac{b \cdot h}{2}}\texttt{\\}\texttt{]}$$, se convierte en algo como lo siguiente: 

$$a = \frac{b \cdot h}{2}$$

Y el mismo resultado se puede producir usando los dobles signos de dolar, por ejemplo $$\texttt{\$\$}\texttt{a = \frac{b \cdot h}{2}}\texttt{\$\$}$$. 

Sabiendo esto, escribir expresiones matemáticas en el entorno virtual se puede volver algo relativamente sencillo una vez que dominamos los comandos básicos de $$\LaTeX$$. Abajo les dejo algunas referencias que pueden resultar de gran ayuda.

A continuación les dejo unos ejemplos de como escribir algunos de los comandos de $$\LaTeX$$ más útiles que he ido aprendiendo al llevar diferentes cursos de matemática de la UNED y que les pueden servir para realizar consultas en los foros de consultas cuando estén llevando algún curso de naturaleza matemática.

#### Fundamentos

| $$a^{n}$$                  | $$\texttt{\\}\texttt{(}\texttt{a^\{n\}}\texttt{\\}\texttt{)}$$                     |
| $$\binom{n}{k}$$           | $$\texttt{\\}\texttt{(}\texttt{\\binom\{n\}\{k\}}\texttt{\\}\texttt{)}$$           |
| $$\dfrac{a}{b}$$           | $$\texttt{\\}\texttt{(}\texttt{\\dfrac\{a\}\{b\}}\texttt{\\}\texttt{)}$$           |
| $$\sqrt{a}$$               | $$\texttt{\\}\texttt{(}\texttt{\\sqrt\{a\}}\texttt{\\}\texttt{)}$$                 |
| $$\sqrt[n]{a}$$            | $$\texttt{\\}\texttt{(}\texttt{\\sqrt[n]\{a\}}\texttt{\\}\texttt{)}$$              |
| $$a_1^2$$                  | $$\texttt{\\}\texttt{(}\texttt{a_1^2}\texttt{\\}\texttt{)}$$                       |
| $$\int_{i=1}^n$$           | $$\texttt{\\}\texttt{(}\texttt{\\int_\{i=1\}^n}\texttt{\\}\texttt{)}$$             |
| $$\lim_{x\to\infty} f(x)$$ | $$\texttt{\\}\texttt{(}\texttt{\\lim_\{x\\to\\infty\} f(x)}\texttt{\\}\texttt{)}$$ |

 

#### Lógica

| $$p \wedge q$$                        | $$\texttt{\\}\texttt{(} \texttt{p \wedge q} \texttt{\\}\texttt{)}$$                                   |
| $$p \vee q$$                          | $$\texttt{\\}\texttt{(}\texttt{\\neg{p}}\texttt{\\}\texttt{)}$$                                       |
| $$\neg{p}$$                           | $$\texttt{\\}\texttt{(}\texttt{\\neg{p}}\texttt{\\}\texttt{)}$$                                       |
| $$p \rightarrow q$$                   | $$\texttt{\\}\texttt{(}\texttt{p \rightarrow q}\texttt{\\}\texttt{)}$$                                |
| $$p \leftrightarrow q$$               | $$\texttt{\\}\texttt{(}\texttt{p \leftrightarrow q}\texttt{\\}\texttt{)}$$                            |
| $$P \equiv Q$$                        | $$\texttt{\\}\texttt{(}\texttt{P \\equiv Q}\texttt{\\}\texttt{)}$$                                    |
| $$\forall{x} \in X$$                  | $$\texttt{\\}\texttt{(}\texttt{\\forall{x} \\in X}\texttt{\\}\texttt{)}$$                             |
| $$\exists{y} \in Y$$                  | $$\texttt{\\}\texttt{(}\texttt{\\exists{y} \\in Y}\texttt{\\}\texttt{)}$$                             |
| $$\sum_{i=1}^{\infty} \frac{1}{n^s}$$ | $$\texttt{\\}\texttt{(} \texttt{\\sum_\{i=1\}^\{\\infty\} \\frac\{1\}\{n^s\}} \texttt{\\}\texttt{)}$$ |
| $$\prod_p \frac{1}{1 - p^{-s}}$$      | $$\texttt{\\}\texttt{(} \texttt{\\prod_p \\frac\{1\}\{1 - p^\{-s\}}\texttt{\\}\texttt{)}$$                                   |

#### Conjuntos:

| $$\{x_1,\dots,x_n\}$$              | $$\texttt{\\}\texttt{(}\texttt{\\{x_1, \dots, x_n\\}}\texttt{\\}\texttt{)}$$            |
| $$\{x \mid p(x)\}$$                | $$\texttt{\\}\texttt{(}\texttt{\\{x \mid p(x)\\}}\texttt{\\}\texttt{)}$$                |
| $$a \mid b$$                       | $$\texttt{\\}\texttt{(}\texttt{a \\mid b}\texttt{\\}\texttt{)}$$                        |
| $$a \not\mid b$$                   | $$\texttt{\\}\texttt{(}\texttt{a \\not\\mid b}\texttt{\\}\texttt{)}$$                   |
| $$x \in X$$                        | $$\texttt{\\}\texttt{(}\texttt{x \\in X}\texttt{\\}\texttt{)}$$                         |
| $$x \not\in X$$                    | $$\texttt{\\}\texttt{(}\texttt{x \\not\\in X}\texttt{\\}\texttt{)}$$                    |
| $$\mid X \mid$$                    | $$\texttt{\\}\texttt{(}\texttt{\left\| X \right\|}\texttt{\\}\texttt{)}$$               |
| $$\overline{X}$$                   | $$\texttt{\\}\texttt{(}\texttt{\\overline{X}}\texttt{\\}\texttt{)}$$                    |
| $$\emptyset$$                      | $$\texttt{\\}\texttt{(}\texttt{\\emptyset}\texttt{\\}\texttt{)}$$                       |
| $$X \subseteq Y$$                  | $$\texttt{\\}\texttt{(}\texttt{X \\subseteq Y}\texttt{\\}\texttt{)}$$                   |
| $$X \subset Y$$                    | $$\texttt{\\}\texttt{(}\texttt{X \\subset Y}\texttt{\\}\texttt{)}$$                     |
| $$\mathcal{P}(x)$$                 | $$\texttt{\\}\texttt{(}\texttt{\\mathcal{P}(x)}\texttt{\\}\texttt{)}$$                  |
| $$X \cup Y$$                       | $$\texttt{\\}\texttt{(}\texttt{X \\cup Y}\texttt{\\}\texttt{)}$$                        |
| $$X \cap Y$$                       | $$\texttt{\\}\texttt{(}\texttt{X \\cap Y}\texttt{\\}\texttt{)}$$                        |
| $$X \times Y$$                     | $$\texttt{\\}\texttt{(}\texttt{X \\times Y}\texttt{\\}\texttt{)}$$                      |
| $$\bigcup_{i=1}^{3}{A_i}$$         | $$\texttt{\\}\texttt{(}\texttt{\\bigcup_{i=1}^{3}{A_i}}\texttt{\\}\texttt{)}$$          |
| $$\bigcup_{i \in \{1,2,3\}}{A_i}$$ | $$\texttt{\\}\texttt{(}\texttt{\\bigcup_{i \\in \{1,2,3\}}{A_i}}\texttt{\\}\texttt{)}$$ |
| $$\bigcap_{i=1}^{3}{A_i}$$         | $$\texttt{\\}\texttt{(}\texttt{\\bigcap_{i=1}^{3}{A_i}}\texttt{\\}\texttt{)}$$          |
| $$\bigcap_{i \in \{1,2,3\}}{A_i}$$ | $$\texttt{\\}\texttt{(}\texttt{\\bigcap_{i \\in \{1,2,3\}}{A_i}}\texttt{\\}\texttt{)}$$ |
| $$(x,y)$$                          | $$\texttt{\\}\texttt{(}\texttt{(x,y)}\texttt{\\}\texttt{)}$$                            |
| $$(x_1,\dots,y_n)$$                | $$\texttt{\\}\texttt{(}\texttt{(x_1, \dots, y_n)}\texttt{\\}\texttt{)}$$                |
| $$\mathbb{N}$$                     | $$\texttt{\\}\texttt{(}\texttt{\\mathbb{N}}\texttt{\\}\texttt{)}$$                      |
| $$\mathbb{Z}$$                     | $$\texttt{\\}\texttt{(}\texttt{\\mathbb{Z}}\texttt{\\}\texttt{)}$$                      |
| $$\mathbb{Q}$$                     | $$\texttt{\\}\texttt{(}\texttt{\\mathbb{Q}}\texttt{\\}\texttt{)}$$                      |
| $$\mathbb{R}$$                     | $$\texttt{\\}\texttt{(}\texttt{\\mathbb{R}}\texttt{\\}\texttt{)}$$                      |

#### Relaciones:

| $${}_{a}\mathfrak{R}_{b}$$              | $$\texttt{\\}\texttt{(}\texttt{\{\}_\{a\}\\mathfrak\{R\}_\{b\}}\texttt{\\}\texttt{)}$$            |
| $$[x]$$                                 | $$\texttt{\\}\texttt{(}\texttt{[x]}\texttt{\\}\texttt{)}$$                                        |
| $$\mathfrak{R}^{-1}$$                   | $$\texttt{\\}\texttt{(}\texttt{\\mathfrak\{R\}^\{-1\}}\texttt{\\}\texttt{)}$$                     |
| $$\mathfrak{R}_1 \circ \mathfrak{R}_2$$ | $$\texttt{\\}\texttt{(}\texttt{\\mathfrak\{R\}_1 \\circ \\mathfrak\{R\}_2}\texttt{\\}\texttt{)}$$ |


#### Funciones

| $$f(x)$$      | $$\texttt{\\}\texttt{(}\texttt{f(x)}\texttt{\\}\texttt{)}$$       |
| $$f:X \to Y$$ | $$\texttt{\\}\texttt{(}\texttt{f:X \\to Y}\texttt{\\}\texttt{)}$$ |
| $$f \circ g$$ | $$\texttt{\\}\texttt{(}\texttt{f \\circ g}\texttt{\\}\texttt{)}$$ |
| $$f^{-1}$$    | $$\texttt{\\}\texttt{(}\texttt{f^{-1}}\texttt{\\}\texttt{)}$$     |

#### Geometría

| $$P,Q,R$$                      | $$\texttt{\\}\texttt{(}\texttt{P,Q,R}\texttt{\\}\texttt{)}$$                             |
| $$\overline{PQ}$$              | $$\texttt{\\}\texttt{(}\texttt{\\overline{PQ}}\texttt{\\}\texttt{)}$$                    |
| $$\overleftrightarrow{PQ}$$    | $$\texttt{\\}\texttt{(}\texttt{\\overleftrightarrow{PQ}}\texttt{\\}\texttt{)}$$          |
| $$\overrightarrow{PQ}$$        | $$\texttt{\\}\texttt{(}\texttt{\\overrightarrow{PQ}}\texttt{\\}\texttt{)}$$              |
| $$\angle{ABC}$$                | $$\texttt{\\}\texttt{(}\texttt{\\angle{ABC}}\texttt{\\}\texttt{)}$$                      |
| $$m\angle{ABC}=r^{\circ}$$     | $$\texttt{\\}\texttt{(}\texttt{m\\angle{ABC}^{\\circ}}\texttt{\\}\texttt{)}$$            |
| $$\angle{1}\cong\angle{2}$$    | $$\texttt{\\}\texttt{(}\texttt{\\angle{1} \\cong \\angle{2}}\texttt{\\}\texttt{)}$$      |
| $$\triangle{ABC}$$             | $$\texttt{\\}\texttt{(}\texttt{\\triangle{ABC}}\texttt{\\}\texttt{)}$$                   |
| $$l \perp m$$                  | $$\texttt{\\}\texttt{(}\texttt{l \\perp m}\texttt{\\}\texttt{)}$$                        |
| $$l \parallel m$$              | $$\texttt{\\}\texttt{(}\texttt{l \\parallel m}\texttt{\\}\texttt{)}$$                    |
| $$l \not\perp m$$              | $$\texttt{\\}\texttt{(}\texttt{l \\not\\perp m}\texttt{\\}\texttt{)}$$                   |
| $$l \not\parallel m$$          | $$\texttt{\\}\texttt{(}\texttt{l \\not\\parallel m}\texttt{\\}\texttt{)}$$               |
| $$\alpha,\beta,\gamma,\theta$$ | $$\texttt{\\}\texttt{(}\texttt{\\alpha, \\beta, \\gamma, \\theta}\texttt{\\}\texttt{)}$$ |
| $$\pi$$                        | $$\texttt{\\}\texttt{(}\texttt{\\pi}\texttt{\\}\texttt{)}$$                              |

#### Operaciones Multilíneas

En ciertas ocasiones puede ser útil desarrollar una ecuación que ocupa múltiples lineas, como el ejemplo siguiente:

$$\begin{aligned}\cos{43^{\circ}} &= \dfrac{a}{27^{\circ}} \\27^{\circ}\cos{43^{\circ}} &= a\end{aligned}$$

Para conseguir este efecto, debemos escribir el código $$\LaTeX$$ entre dos expresiones de alineamiento como se muestra a continuación:

$$\texttt{\\}\texttt{(}\texttt{\\begin{aligned}}\quad\texttt{\\end{aligned}}\texttt{\\}\texttt{)}$$.

Para producir una nueva línea se utiliza el operador $$\texttt{\\\\}$$, y para indicar que las expresiones se deben alinear en algún punto se utiliza el operador  $$\texttt{&}$$ para marcar el punto de alineamiento. Por ejemplo, la expresión de arriba se escribe como:

$$\texttt{\\begin{aligned}}\texttt{\\cos{43^{\\circ}} &= \\dfrac{a}{27^{\\circ}} \\\\27^{\\circ}\\cos{43^{\\circ}} &= a}\texttt{\\end{aligned}}$$

Donde se puede ver que el punto de alineamiento es el signo de igual y por eso ambas expresiones están alineadas en ese signo: $$\texttt{&=}$$. También se puede ver que hay un retorno de carro (o una nueva línea) justo donde comienza $$\texttt{\\\\27^{\\circ}}$$. 

Con algo de paciencia y cuidado es posible escribir expresiones multilíneas complejas como la siguiente:

$$\begin{aligned} 1 + S(n) &= S(1 + n) \;& \text{[Def. 1, (b)]} \\ &= S(n + 1) \;& \text{[Hipótesis inductiva]} \\ &= (n + 1) + 1 \;& \text{[Def. 1, (a)]} \\ &= S(n) + 1 \;& \text{[Def. 1, (a)]}\end{aligned}$$

### Otras Herramientas Útiles

A menudo, al escribir código $$\LaTeX$$ en el foro, uno no está muy seguro de si lo ha hecho bien hasta que se publica la entrada en el foro. Con frecuencia, uno descubre que se equivocó en algún comando, y ya en este punto no queda más remedio que editar la entrada en el foro para corregir el problema. Una forma de evitar este tipo de errores es por medio de escribir el código $$\LaTeX$$ en alguna otra herramienta. Una que me gusta por su sencillez es [CodeCogs][1]. Se Puede escribir el código $$\LaTeX$$ ahí y luego nada más se pasa al foro entre los paréntesis descritos en esta publicación.

Otra alternativa es utilizar algún otro editor popular como [Overleaf][2] o [TexStudio][3] para escribir las entradas del foro en el editor y luego pasarlas al foro una vez que uno está satisfecho. Ambos editores soportan los mismos paréntesis de $$\LaTeX$$ que el foro de consultas y la plataforma virtual.

### Lectura Adicional

Si quieres aprender más, puedes consultar innumerables recursos en Internet, pero acá abajo dejo algunos de mis favoritos.

* [Listado de Comandos de LaTeX para Estudiantes de Matemática][4]
* [La Introducción no tan Corta de LaTeX][5]
* [Lista de Comandos Soportados por MathJax][6]

[1]: https://latex.codecogs.com/eqneditor/editor.php?lang=es-es
[2]: https://www.overleaf.com/project
[3]: https://www.texstudio.org/
[4]: https://mirrors.ucr.ac.cr/CTAN/info/undergradmath/undergradmath.pdf
[5]: https://mirrors.ucr.ac.cr/CTAN/info/lshort/spanish/lshort-letter.pdf
[6]: https://docs.mathjax.org/en/latest/input/tex/macros/index.html
