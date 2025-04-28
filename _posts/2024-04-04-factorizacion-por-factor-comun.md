---
layout: post
title: Factorización por Factor Común
description: Se explica la factorización por medio de factor común.
date: 2024-04-04T11:00:00-06:00
author: axell
image: '/images/117.png'
tags: [precálculo, álgebra, factorización]
commissions: [cofoma]
featured: true
---

# ¿Qué es la factorización?

La factorización es un procedimiento matemático que permite representar expresiones algebraicas de otra forma. También, la factorización ayuda a la eliminar factores que se repiten en dichas expresiones y ayuda, también, a conocer aquellos números o términos que pueden estar involucrados para llegar a la solución final. 

Principalmente, lo que se quiere lograr con la factorización es conseguir representar un polinomio como el producto de otros más simple {% cite precalc2019 --file factoring %}. 

## ¿Qué es la factorización por factor común?

La factorización por factor común, es un método que permite obtener o determinar aquellos números y/o variables que son 'comunes' dentro de las expresiones algebraicas.

### ***Ejemplo 1*** 

Imagínese que se tienen los números 2, 4, 6 y 8. **¿Qué tienen en común estos números?**

Para el análisis de estos números, podemos ver que todos son números divisibles entre dos de la siguiente forma:

$$\dfrac{2}{2}=1, \hspace{1cm} \dfrac{4}{2}=2, \hspace{1cm} \dfrac{6}{2}=3, \hspace{1cm} \dfrac{8}{2}=4$$

De esta forma, podemos observar que el número que todos tienen en común es el 2, ya que todos son divisibles entre dos. 

### ***Ejemplo 2***

Ahora bien, analicemos la siguiente expresión: 

$$3xy+5xz+7xh-11xp$$

¿Qué tienen en común todos los monomios presentados en la expresión anterior?

Como podemos observar, todos los monomios tienen en común la variable $$x$$, por lo que podríamos entonces decir que todas las expresiones son divisibles entre $$x$$, de la siguiente forma: 

$$\dfrac{3xy}{x}=3y, \hspace{1cm} \dfrac{5xz}{x}=5z, \hspace{1cm} \dfrac{7xh}{x}=7h, \hspace{1cm} \dfrac{-11xp}{x}=-11p$$

Asimismo, podríamos presentarlo de una forma más facil de poder entenderlo, y es que al momento de multiplicar $$3y \cdot x =3xy$$ y así sucesivamente con cada uno de los factores del polinomio, por lo que si lo expresamos como una multiplicación, aplicando la propiedad distributiva; entonces podremos representarlo de la siguiente forma:

$$3xy+5xz+7xh-11xp=x(3y+5z+7h-11p)$$ 

Y así es como aplicamos la factorización por factor común. 

**NOTA:** Para poder aplicar la factorización por factor común, debemos comprender que el término que sea <span style="text-decoration: underline;">común</span> debe estar presente en todos los factores o térrminos del polinomio.

### ***Ejemplo 3***

En muchas ocaciones, vamos a tener polinomios con términos con exponentes diferentes a 1, por lo que, en ese caso, debemos aplicar las propiedades de las potencias y extraer el *mayor factor común*. Por ejemplo, imaginemos que tenemos la expresión $$zx^3+yx^5$$

Se sabe que el término $$zx^3=x\cdot x \cdot x \cdot z \hspace{0.5cm}$$ y que $$\hspace{0.5cm}yx^5=x \cdot x \cdot x \cdot x \cdot x \cdot x \cdot y, \hspace{0.5cm}$$ entonces si queremos encontrar <span style="text-decoration: underline;"><strong>los términos que se encuentran en común en ambos monomios</strong></span>, entonces podemos decir que es $$x^3=x \cdot x \cdot x, \hspace{0.5cm}$$ por lo que la factorización correspondiente será:

$$zx^3+yx^5=x^3(z+yx^2)$$

Obsérvese que si multiplicamos $$x^3 \cdot yx^2=yx^5$$ y, de la misma forma, si multiplicamos $$x^3 \cdot z=zx^3$$

### ***Ejemplo 4***

Factorice completamente la expresión $$8x^{6}y^{5}z^{7}+16x^{3}y^{7}z^{4}$$

**SOLUCIÓN**

$$8x^{6}y^{5}z^{7}+16x^{3}y^{7}z^{4}$$

$$=8 x^{3}x^{3}y^{5}z^{4}z^{3}+8 \cdot 2x^{3}y^{5}y^{2}z^{4} \hspace {1.5cm}$$ aplicando las leyes de potencia.

$$=8x^{3}y^{5}z^{4}(x^{3}z^{3}+2y^{2})  \hspace{1.5 cm}$$ Aplicando la ley distributiva y obteniendo el mayor factor común entre los términos. 

## Otros Métodos de Factorización:

* [Cambio de Variable]({% post_url 2025-03-07-fact-cambio-de-variable %}).
* [Completar Cuadrados]({% post_url 2025-03-10-fact-completar-cuadrados %}).
* [División Sintética]({% post_url 2025-03-04-fact-division-sintetica %}).
* [Por Inspección]({% post_url 2025-03-03-fact-inspeccion %}).

## Bibliografía Consultada

{% bibliography --file factoring --cited %}
