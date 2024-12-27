---
layout: post
title: Ejemplos de ecuaciones diofanticas
description: Algunos ejercicios de ecuaciones diofanticas.
date: 2023-12-27 11:00:00
author: axell
image: '/images/45.jpg'
tags: [teoria de los numeros, matematica]
commissions: [cofoma,cocodi]
#featured: false
comments: false
share: false
---
## Ejercios sobre ecuaciones diofanticas
### Ejercicio 1. 
Resuelva la ecuacion diofántica $$3206x + 989y = 11$$, utilizando el método de las fracciones continuas.

***Solucion***

Como podemos ver, el $$mcd(3206,989)=1$$; entonces la ecuación tiene solución *(recordemos que esta es una condición que debe cumplir)* por lo que usando el método de fracciones continuas tenemos que:
<p align="center">
$$ 
  \dfrac{3206}{989}=3+\dfrac{1}{4+\dfrac{1}{7+\dfrac{1}{4+\dfrac{1}{8}}}} 
$$
</p>

Entonces tenemos como resultado que $$\dfrac{3206}{989}=\[3;4,7,4,8\]$$; sin embargo, en este resultado podemos eliminar la fracción $$\dfrac{1}{8}$$ en donde entonces nos quedaria la fracción:

<p align="center">
$$ 
  \dfrac{3206}{989}=3+\dfrac{1}{4+\dfrac{1}{7+\dfrac{1}{4}}}=\dfrac{389}{120} 
$$
</p>

Con este resultado, obtenemos por la fórmula que:

<p align="center">
$$ 
  3206 \cdot 120 - 389 \cdot 989 = (-1)^5
$$
</p>

Ahora bien, si multiplicamos la ecuación por $$-11$$, y agrupamos; podemos obtener la identidad:

<p align="center">
$$ 
  3206(-1320) + 989(4279)=11 
$$
</p>

Por lo que de esta manera, una solución particular es que $$x=-1320$$ y $$y=4279$$, en donde la solución general es de la forma $$x=-1320-989n$$ y $$=4279+3206m$$, con $$n \in \mathbb{Z}$$
