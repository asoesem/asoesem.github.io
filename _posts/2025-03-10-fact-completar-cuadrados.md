---
layout: post
title: Factorización por Completado de Cuadrados
description: Guía de como factorizar expresiones algebraicas usando completado de cuadrados.
date: 2025-03-10T08:00:00-06:00
author: edalorzo
image: '/images/58.png'
tags: [precálculo,álgebra,factorización]
commissions: [cofoma]
featured: true
comments: false
share: false
---

El método de factorización por completado de cuadrados es una técnica algebraica que permite reescribir ciertos polinomios en productos de binomios cuadrados perfectos. Se basa en reconocer estructuras cuadráticas y transformarlas en expresiones factorizables. En este artículo, exploraremos algunos casos distintos donde se aplica este método, junto con ejemplos detallados.

## Cuadrado de un binomio

Para entender el método de completado de cuadrados es fundamental recordar la fórmula notable del cuadrado de un binomio:

$$a^2 \pm 2ab + b^2 = (a \pm b)^2$$

El completado de cuadrados busca reescribir una expresión algebraica para reflejar este patrón y de esa manera poder factorizarla como un binomio al cuadrado. 

Se pueden dar diferentes escenarios:

* Cuando se tiene un [binomio con dos cuadrados perfectos](#caso-1-binomio-con-dos-cuadrados-perfectos).
* Cuando se tiene un [trinomio con dos cuadrados perfectos](#caso-2-trinomio-con-dos-cuadrados-perfectos).
* Cuando se tiene un [trinomio con solo su primer término al cuadrado](#caso-3-trinomio-con-solo-su-primer-término-al-cuadrado).

### Caso 1: Binomio con dos cuadrados perfectos

Este caso es, probablemente, el más sencillo, porque lo que nos hace falta es el segundo término del trinomio de un binomio al cuadrado. Todo lo que hay que hacer es sumar y restar ese término a la vez. Es decir, si tenemos:

$$\begin{aligned}
a^2 + b^2 \\
=a^2 + b^2 + 2ab -2ab \\
=a^2 + 2ab + b^2 -2ab \\
=(a^2 + 2ab + b^2) -2ab \\
=(a + b)^2 - 2ab
\end{aligned}$$

En muchos ejercicios, un vez que llegamos a este punto, suele se posible factorizar la expresión resultante como una diferencia de cuadrados. Por ejemplo

$$\begin{aligned}
(a + b)^2 - 2ab \\
=\left[(a+b) + \sqrt{2ab}\right]\left[(a+b) - \sqrt{2ab}\right] \\
=(a + b + \sqrt{2ab})(a + b - \sqrt{2ab})
\end{aligned}$$

#### Ejemplo 1: 

Factorizar:

$$x^4 + 4$$

##### Paso 1: Reconocer el patrón del binomio:

$$(x^2)^2 + (2)^2$$

##### Paso 2: Calcular el segundo término del trinomio:

Recordemos que el segundo término es $$2ab$$, es decir, dos veces la raíz del primer término por la raíz del segundo. Luego, en nuestro ejemplo, la raíz del primer término es $$x^2$$ y la del segundo es $$2$$, entonces: 

$$(2)(x^2)(2) = 4x^2$$


##### Paso 3: Sumar y restar el nuevo término:

Al sumar y restar el nuevo término, la expresión algebraica se mantiene igual, pero abre la posibilidad de factorizar la expresión resultante.

$$\begin{aligned}
(x^2)^2 + (2)^2 + 4x^2 - 4x^2 \\
=x^4 + 4 + 4x^2 - 4x^2        \\
=x^4 + 4x^2 + 4 - 4x^2    \\
\end{aligned}$$

##### Paso 4: Factorizar usando suma de binomio al cuadrado:

$$\begin{aligned}
=(x^4 + 4x^2 + 4) - 4x^2   \\
=(x^2 + 2)^2 - 4x^2       \\
\end{aligned}$$

##### Paso 5: Completar la factorización

En este caso, la expresión se puede factorizar aun más mediante la diferencia de cuadrados:

$$\begin{aligned}
(x^2 + 2)^2 - 4x^2       \\
=\left[(x^2 + 2) - 2x\right]\left[(x^2 + 2) + 2x\right]\\
=(x^2 -2x + 2)(x^2 +2x+2)
\end{aligned}$$

### Caso 2: Trinomio con dos cuadrados perfectos

Este es un caso en donde tenemos un trinomio en el que el primer y tercer términos son cuadrados, pero el segundo es incompatible con la fórmula notable del binomio al cuadrado.

Por ejemplo:

$$a^2 + ab + b^2$$

En este caso, la estrategia consiste en considerar que podemos calcular un nuevo segundo término que sumamos y restamos del trinomio al mismo tiempo:

$$\begin{aligned}
a^2 + ab + b^2 \\
= a^2 + ab + b^2 + 2ab - 2ab \\
= a^2 + 2ab + b^2 + ab - 2ab \\
=(a^2 + 2ab + b^2) + ab - 2ab \\
=(a + b)^2 - ab \\
\end{aligned}$$

En este punto, algunas veces suele ser posible aplicar otros métodos de factorización para completar el trabajo. Por ejemplo, la diferencia de cuadrados:

$$\begin{aligned}
(a + b)^2 - ab \\
=\left[(a+b) + \sqrt{ab}\right]\left[(a+b) - \sqrt{ab}\right] \\
=(a + b + \sqrt{ab})(a + b - \sqrt{ab})\\
\end{aligned}$$

#### Ejemplo 2: 

Factorizar:

$$x^8 + x^4y^4 + y^8$$

##### Paso 1: Reconocer el patrón del trinomio:

Podemos ver que dos de los términos son cuadrados perfectos:

$$(x^4)^2 + x^4y^4 + (y^4)^2$$

##### Paso 2: Calcular el segundo término del trinomio:

Recordemos que el segundo término es dos veces la raíz del primer término ($$x^4$$) por la raíz del tercero ($$y^4$$): 

$$2(x^4)(y^4)$$

##### Paso 3: Sumar y restar el nuevo término:

Al sumar y restar el nuevo término la expresión se mantiene igual, pero abre la posibilidad de factorizar la expresión resultante.

$$\begin{aligned}
(x^4)^2 + x^4y^4 + (y^4)^2 + 2x^4y^4 - 2x^4y^4\\
=x^8 + 2x^4y^4 + y^8 + x^4y^4 - 2x^4y^4\\
=(x^8 + 2x^4y^4 + y^8) + x^4y^4 - 2x^4y^4\\
=(x^8 + 2x^4y^4 + y^8) - x^4y^4\\
\end{aligned}$$

##### Paso 4: Factorizar usando suma de binomio al cuadrado:

$$\begin{aligned}
(x^8 + 2x^4y^4 + y^8) - x^4y^4\\
=(x^4 + y^4)^2 - x^4y^4\\
\end{aligned}$$

##### Paso 5: Completar la factorización

En este caso la expresión se puede factorizar aun más mediante la diferencia de cuadrados:

$$\begin{aligned}
(x^4 + y^4)^2 - x^4y^4\\
=\left[(x^4 + y^4) + x^2y^2\right]\left[(x^4 + y^4) - x^2y^2\right]\\
=(x^4 + y^4 + x^2y^2)(x^4 + y^4 - x^2y^2)\\
=(x^4 + x^2y^2 + y^4)(x^4 - x^2y^2 + y^4)
\end{aligned}$$

### Caso 3: Trinomio con solo su primer término al cuadrado

Este caso aplica para expresiones de la forma $$(ax)^{2n} + bx^{n} + c$$. Es decir, casos en donde solo el primer término es un cuadrado.

En la expresión $$(ax)^{2n} + bx^{n} + c$$ podemos ver que $$(ax)^n$$ es el primer término de un binomio y se puede derivar su segundo término a partir de $$bx^{n}$$, porque sabemos que, dado un binomio al cuadrado, $$bx^{n}$$ es el doble producto de su primer término por el segundo. A fin de encontrar el segundo término del binomio debemos dividir $$bx^{n}$$ entre dos veces el primer término:

$$\frac{bx^n}{2a^nx^n} = \frac{b}{2a^n}$$

Luego, el tercer término del trinomio tendría que ser: 

$$\left(\frac{b}{2a^n}\right)^2 = \frac{b^2}{4a^{2n}}$$

El cuadrado del binomio y su respectivo trinomio serían de la siguiente forma:

$$\begin{aligned}
\left[(ax)^n+\frac{b}{2a^n}\right]^2 = (ax)^{2n} + (\cancel{2})(\cancel{a^n}x^n)\left(\frac{b}{\cancel{2}\cancel{a^n}}\right) + \frac{b^2}{4a^{2n}} \\
= (ax)^{2n} + bx^n + \frac{b^2}{4a^{2n}}
\end{aligned}$$

Con este conocimiento podemos reformular nuestro trinomio original sumando y restando ese tercer término que hemos descubierto:


$$\begin{aligned}
(ax)^{2n} + bx^n + c + \frac{b^2}{4a^{2n}} - \frac{b^2}{4a^{2n}} \\
=\left[(ax)^{2n} + bx^n + \frac{b^2}{4a^{2n}}\right] + c - \frac{b^2}{4a^{2n}}\\
=\left[(ax)^{n} + \frac{b}{2a^n}\right]^2 + c - \frac{b^2}{4a^{2n}}
\end{aligned}$$

Llegados a este punto, muchos ejercicios de factorización permiten factorizar la expresión resultante usando otros métodos adicionales.


#### Ejemplo 3: 

Factorizar:

$$4x^2 + 4x - 15$$

##### Paso 1: Reconocer el patrón del trinomio:

Podemos ver que el primer término es un cuadrado:

$$(2x)^2 + 4x - 15$$

##### Paso 2: Calcular un nuevo tercer término del trinomio a partir del segundo:

El nuevo tercer término será:

$$\frac{b^2}{4a^{2n}} = \frac{4^2}{4 \cdot 2^2} = \frac{16}{16} = 1$$

##### Paso 3: Sumar y restar el nuevo término:

Al sumar y restar el nuevo término la expresión se mantiene igual, pero abre la posibilidad de factorizar la expresión resultante.

$$\begin{aligned}
(2x)^2 + 4x + 1 - 1 - 15\\
(4x^2 + 4x + 1) - 16\\
\end{aligned}$$

##### Paso 4: Factorizar usando suma de binomio al cuadrado:

$$\begin{aligned}
(4x^2 + 4x + 1) - 16\\
=(2x + 1)^2 - 16\\
\end{aligned}$$

##### Paso 5: Completar la factorización

En este caso la expresión se puede factorizar aun más mediante la diferencia de cuadrados:

$$\begin{aligned}
(2x + 1)^2 - 16\\
=\left[(2x + 1) + 4\right]\left[(2x + 1) - 4\right]\\
=\left[2x + 1 + 4\right]\left[2x + 1 - 4\right]\\
=(2x+5)(2x-3)\\
\end{aligned}$$

## Conclusión

El método de completado de cuadrados es una herramienta poderosa para factorizar polinomios de diversas estructuras. Se puede aplicar cuando otros métodos más sencillos han fallado, particulamente en tres situaciones clave:

* Cuando se tiene un [binomio con dos cuadrados perfectos](#caso-1-binomio-con-dos-cuadrados-perfectos).
* Cuando se tiene un [trinomio con dos cuadrados perfectos](#caso-2-trinomio-con-dos-cuadrados-perfectos).
* Cuando se tien un [trinomio con solo su primer término al cuadrado](#caso-3-trinomio-con-solo-su-primer-término-al-cuadrado).

Con la práctica, el completado de cuadrados se vuelve una herramienta útil no solo en factorización, sino también en ecuaciones cuadráticas y cálculo.

## Otros Métodos de Factorización:

* [División Sintética]({% post_url 2025-03-04-fact-division-sintetica %}).
* [Cambio de Variable]({% post_url 2025-03-07-fact-cambio-de-variable %}).
* [Por Inspección]({% post_url 2025-03-03-fact-inspeccion %}).
* [Factor Común]({% post_url 2024-04-04-factorizacion-por-factor-comun %}).

## Bibliografía Consultada

{% bibliography --file factoring%}
