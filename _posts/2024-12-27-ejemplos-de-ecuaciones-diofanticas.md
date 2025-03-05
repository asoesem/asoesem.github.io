---
layout: post
title: Ejemplos de ecuaciones diofánticas
description: Algunos ejercicios de ecuaciones diofanticas.
date: 2024-12-27 11:00:00
author: axell
image: '/images/135.jpg'
tags: [teoría números, matemáticas]
featured: true
comments: false
share: true
---
# Índice

+ [Ejercicios sobre ecuaciones diofaánticas usando fracciones contínuas][1]
  - [Ejercicio 1][11]
  - [Ejercicio 2][12]
+ [Bibliografia y referencias][100]

***

## Ejercicios sobre ecuaciones diofánticas usando fracciones contínuas

### Ejercicio 1:

Resuelva la ecuación diofántica $$3206x + 989y = 11$$, utilizando el método de las fracciones continuas.

***Solución***

(1) Como podemos ver, el $$mcd(3206,989)=1$$, entonces la ecuación tiene solución *(recordemos que esta es una condición que se debe cumplir)*, por lo que usando el método de fracciones continuas tenemos que:

$$\dfrac{3206}{989}=3+\dfrac{1}{4+\dfrac{1}{7+\dfrac{1}{4+\dfrac{1}{8}}}}$$


(2) Entonces, tenemos como resultado que $$\dfrac{3206}{989}=[3;4,7,4,8]$$; sin embargo, de este resultado podemos eliminar la fracción $$\dfrac{1}{8}$$ en donde, entonces, nos quedaria la fracción:

$$\dfrac{3206}{989}=3+\dfrac{1}{4+\dfrac{1}{7+\dfrac{1}{4}}}=\dfrac{389}{120}$$

(3) Con este resultado, obtenemos por la fórmula:

$$3206 \cdot 120 - 389 \cdot 989 = (-1)^5$$

(4) Ahora bien, si multiplicamos la ecuación por $$-11$$, y agrupamos, podemos obtener la identidad:

$$3206(-1320) + 989(4279)=11$$

(5) De esta manera, una solución particular es $$x=-1320$$ y $$y=4279$$, en donde la solución general es de la forma $$x=-1320-989n$$ y $$y=4279+3206m$$, con $$n \in \mathbb{Z}$$

[Regresar al índice][0]

---

### Ejercicio 2:

Utilice el método de fracciones continuas para resolver la ecuación $$99x+41y=3$$

***Solución***

(1) Como podemos ver, el $$mcd(99,41)=1$$; entonces la ecuación tiene solución *(recordemos que esta es una condición que se debe cumplir)* por lo que usando el método de fracciones continuas tenemos que:


$$\dfrac{99}{41}=2+\dfrac{1}{2+\dfrac{1}{2+\dfrac{1}{2+\dfrac{1}{3}}}}$$


(2) Entonces tenemos como resultado que $$\dfrac{99}{41}=[2;2,2,2,1]$$; sin embargo, de este resultado podemos eliminar la fracción $$\dfrac{1}{3}$$, en donde entonces nos quedaria la fracción:

$$\dfrac{99}{41}=2+\dfrac{1}{2+\dfrac{1}{2+\dfrac{1}{2}}}=\dfrac{29}{12}$$

(3) Con este resultado, obtenemos por la fórmula que:

$$99 \cdot 12 - 29 \cdot 41 = (-1)^5$$

(4) Ahora bien, si multiplicamos la ecuación por $$-3$$, y agrupamos; podemos obtener la identidad:

$$99(-36)+(87) \cdot 41 = 3$$

(5) De esta manera, una solución particular es $$x=-36$$ y $$y=87$$, en donde la solución general es de la forma $$x=-36-41n$$ y $$y=87+99m$$, con $$n \in \mathbb{Z}$$

[Regresar al índice][0]

---

## Bibliografia y referencias

Ruiz. H. V. (2024). Cuaderno de trabajo tutoria virtual 2. Capítulos 3 y 4. Divisibilidad y Fracciones Continuas. *Universidad Estatal a Distancia. Cátedra de Matemáticas Superiores*. Obtenido de: aprende.uned.ac.cr

[0]:#índice
[1]:##ejercios-sobre-ecuaciones-diofanticas-usando-fracciones-contínuas
[11]:###ejercicio-1
[12]:###ejercicio-2
[100]:##bibliografia-y-referencias
