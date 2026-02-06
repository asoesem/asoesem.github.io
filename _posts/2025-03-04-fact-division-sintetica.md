---
layout: post
title: Factorización por División Sintética
description: Guía de como factorizar expresiones algebraicas usando división sintética.
date: 2025-03-04T10:00:00-06:00
author: edalorzo
image: '/images/56.png'
tags: [precálculo,álgebra,factorización]
commissions: [cofoma]
featured: true
toc: true
---

La [división sintética][3] (también conocida como regla de Ruffini) es un método eficiente para dividir polinomios entre binomios de la forma $$(x-r)$$ . Esta técnica nos permite encontrar factores de un polinomio y simplificar su factorización, todo con cálculos rápidos y organizados. Entre sus ventajas están que nos permite realizar cálculos sin escribir variables, utiliza pocos cálculos y ocupa mucho menos espacio en el papel que la división larga. Además, las restas en la división larga se convierten en sumas cambiando los signos desde el principio, algo que la división sinténtica simplifica y ayuda a evitar errores de signo.

En este artículo, exploraremos los fundamentos de la división sintética, los teoremas en los que se basa y ejemplos detallados para su aplicación.

## Fundamentos de la División Sintética

La división sintética es una técnica que permite dividir un polinomio $$P(x)$$ entre un binomio lineal $$x-r$$. En lugar de utilizar el procedimiento largo de división polinomial, se usa una tabla para reducir el esfuerzo de los cálculos.

### Teoremas Fundamentales

Para comprender mejor la división sintética es preciso entender algunos teoremas fundamentales en los que se basa.

#### Teorema del Residuo

El [teorema del residuo o del resto][1] establece que si dividimos un polinomio $$P(x)$$ por $$(x-r)$$, el residuo de la división es simplemente $$P(r)$$.

Veamos un ejemplo: sea $$P(x)=2x^3-3x^2-2x+3$$.

Supongamos que calculamos $$P(2)$$:

$$P(2) = 2(2)^3-3(2)^2-2(2)+3 = 2(8)-3(4)-2(2)+3 = 16-12-4+3 = 3$$

Entonces, por el teorema del residuo, si dividimos $$(2x^3-3x^2-2x+3) \div (x-2)$$ obtendremos como residuo $$3$$. Tal como se muestra a continuación:


$$\begin{array}{rrrr|c}
\cancel{2x^3} & -3x^2 & -2x & +3 & x-2\\
\hline
\cancel{-2x^3}      & +4x^2 &     &   & 2x^2 + x\\
& \rule{20mm}{0.40pt} &     &   &\\
& \cancel{x^2}  & \cancel{-2x}  & & \\
& \cancel{-x^2} & \cancel{+2x}  & & \\
& & \rule{20mm}{0.40pt} & & \\
& & & +3 &
\end{array}$$

Es decir: 

$$P(x)= (x-r)Q(x)+R$$

Donde $$Q(x)$$ es el cociente y $$R$$ es el residuo.

Siguiendo nuestro ejemplo:

$$P(x) = (x-2)(2x^2+x)+3$$

Este teorema tiene una implicación interesante. Si $$P(r)=0$$ entonces $$r$$ es un cero del polinomio y $$(x-r)$$ es uno de sus factores.

Por ejemplo, al calcular $$P(1)$$ descubrimos que es un cero del polinomio:

$$P(1) = 2(1)^3-3(1)^2-2(1)+3 = 2(1)-3(1)-2(1)+3 = 2-3-2+3 = 0$$

Para verificar esta observación poder hacer la correspondiente división larga como se muestra a continuación:

$$\begin{array}{rrrr|c}
\cancel{2x^3} & -3x^2 & -2x & +3 & x-1\\
\hline
\cancel{-2x^3} & +2x^2 &     &   & 2x^2 - x - 3\\
& \rule{20mm}{0.40pt} &     &   &\\
& \cancel{-x^2}  & \cancel{-2x}  & & \\
& \cancel{+x^2} & \cancel{-x}  & & \\
& & \rule{20mm}{0.40pt} & & \\
& & \cancel{-3x} & \cancel{+3} & \\
& & \cancel{+3x} & \cancel{-3} & \\
& & & \rule{20mm}{0.40pt} & \\
& & & 0 & \\
\end{array}$$

Como el residuo es 0 en este caso, si aplicamos la fórmula que dice que $$P(x)= (x-r)Q(x)+R$$ obtenemos:

$$P(x)= (x-1)(2x^2-x-3)$$

Que es una factorización ideal para el polinomio $$P(x)$$.

Obviamente, la pregunta que nos haríamos ahora es, ¿cómo podemos descubrir cuales son los ceros del polinomio? Para responder a esa pregunta estudiaremos un segundo teorema.

#### Teorema de las Raíces Racionales

El [teorema del factor o de las raíces racionales][2] nos ayuda a encontrar posibles valores de $$r$$ para los que $$P(r)=0$$. Indica que si el polinomio tiene coeficientes enteros, entonces cualquier raíz racional $$r=\frac{p}{q}$$ debe cumplir que:

* $$p$$ es un divisor del término independiente.
* $$q$$ es un divisor del coeficiente principal.

Recordemos que un polinomio es de la forma $$a_{n}x^{n} + a_{n-1}x^{n-1} + \ldots + a_{1}x + a_{0}$$.

Se llama término idependiente a $$a_{0}$$ y coeficiente principal $$a_{n}$$. En nuestro ejemplo de $$P(x)=2x^3-3x^2-2x+3$$, el término independiente es $$3$$ y el coeficiente principal es $$2$$.

* Los divisores del término independiente son: $$p \in \{\pm 1, \pm 3\}$$.
* Los divisores del coeficiente principal son $$q \in \{\pm 1, \pm 2\}$$.

Por teorema de las raíces racionales, $$r=\frac{p}{q}$$, entonces $$r \in \{\pm 1, \pm 2, \pm 3, \pm \frac{1}{2}, \pm \frac{3}{2}\}$$. Es decir, uno o más de los elementos de este conjunto serán ceros del polinomio $$P(x)$$.

En nuestro ejemplo, se puede comprobar  que $$x=-1$$, $$x=1$$ y $$x=\frac{3}{2}$$ son ceros de $$P(x)$$.

$$
\begin{aligned}
P(1) = 2(1)^3-3(1)^2-2(1)+3 =  0\\
P(-1) = 2(-1)^3-3(-1)^2-2(-1)+3 = 0\\
P\left(\frac{3}{2}\right) = 2\left(\frac{3}{2}\right)^3-3\left(\frac{3}{2}\right)^2-2\left(\frac{3}{2}\right)+3 = 0
\end{aligned}
$$

Es decir $$(x-1)$$, $$(x+1)$$ y $$\left(x-\frac{3}{2}\right)$$ son factores de $$P(x)$$.

Bueno, pero entonces, ¿para qué necesitamos la divisón sintética?

La cosa es que saber donde el polinomio se hace cero solo nos dice uno de sus factores: el dividendo $$(x-r)$$. Pero, no nos dice cuál es el otro factor: el cociente de la división. Para eso tendríamos que realizar una división larga como las que hicimos previamente. No obstante, la división sintética es un método para realizar esa división de una forma mucho más sucinta que la división larga de los ejemplos anteriores.

### División Sintética

Para dividir un polinomio $$P(x)$$ entre $$(x-r)$$ usando división sintética, seguimos estos pasos:

* **Escribir los coeficientes**:
  - Tomamos los coeficientes de $$P(x)$$ en orden descendente, llenando cualquier espacio vacío con un 0.
* **Colocamos la raíza en la tabla**:
  - Colocamos el valor de $$r$$ en la parte derecha de la tabla.
* **Aplicamos la división sintética**
  - Bajamos el primer coeficiente.
  - Multiplicamos ese valor por $$r$$ y sumamos el resultado con el siguiente coeficiente.
  - Repetimos hasta llegar al final.
* **Interpretación del resultado:**
  - Los valores obtenidos son los coeficientes del cociente, y el último valor, su residuo.

Siguiendo nuestro ejemplo:

$$\begin{array}{rrrr|c}
2 & -3 & -2 & 3 & 1\\
\hline
\downarrow & 2 & -1 & -3 &\\
\hline     
2 & -1 & -3 & 0 & \\
\downarrow & \downarrow & \downarrow & \\
2x^2 & -x & -3 &
\end{array}
$$

Entonces, una de las factorizacioes del polinomio $$P(x) = 2x^3-3x^2-2x+3$$ sería:

$$(x-1)(2x^2-x-3)$$

Sabemos que el polinomio $$P(x)$$ tiene otro cero en $$(x+1)$$:

$$\begin{array}{rrrr|c}
2 & -3 & -2 & 3 & -1\\
\hline
\downarrow & -2 & 5 & -3 &\\
\hline     
2 & -5 & 3 & 0 & \\
\downarrow & \downarrow & \downarrow & \\
2x^2 & -5x & +3 &
\end{array}
$$

Entonces, otra factorización del polinomio $$P(x) = 2x^3-3x^2-2x+3$$ sería:

$$(x+1)(2x^2-5x+3)$$

Finalmente, sabemos que el polinomio $$P(x)$$ tiene otro cero en $$\left(x-\frac{3}{2}\right)$$:

$$\begin{array}{rrrr|c}
2 & -3 & -2 & 3 & \frac{3}{2}\\
\hline
\downarrow & 3 & 0 & -3 &\\
\hline     
2 & 0 & -2 & 0 & \\
\downarrow & \downarrow & \downarrow & \\
2x^2 & -0x & -2 &
\end{array}
$$

Entonces, la otra factorización del polinomio $$P(x) = 2x^3-3x^2-2x+3$$ sería:

$$\left(x-\frac{3}{2}\right)(2x^2-2)$$

Espero que esta guía les sea de gran utilidad para aplicar la división sintética en la factorización de polinomios de grado mayor o igual a 2.

## Referencias Adicionales

* [Teorema del Resto][1]
* [Teorema del Factor][2]
* [Regla de Ruffini][3]

## Otros Métodos de Factorización:

* [Cambio de Variable]({% post_url 2025-03-07-fact-cambio-de-variable %}).
* [Completar Cuadrados]({% post_url 2025-03-10-fact-completar-cuadrados %}).
* [Por Inspección]({% post_url 2025-03-03-fact-inspeccion %}).
* [Factor Común]({% post_url 2024-04-04-factorizacion-por-factor-comun %}).

## Bibliografía Consultada

{% bibliography --file factoring%}




[1]: https://es.wikipedia.org/wiki/Teorema_del_resto
[2]: https://es.wikipedia.org/wiki/Teorema_del_factor
[3]: https://es.wikipedia.org/wiki/Regla_de_Ruffini
