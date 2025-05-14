---
layout: post
title: Factorización por Cambio de Variable
description: Guía de como factorizar expresiones algebraicas usando cambio de variable.
date: 2025-03-07T20:00:00-06:00
author: edalorzo
image: '/images/57.png'
tags: [precálculo,álgebra,factorización]
commissions: [cofoma]
featured: true
---

La factorización por cambio de variable es una técnica utilizada en algebra para transformar expresiones complicadas en otras más simples, facilitando su factorización. Este método es especialmente útil cuando un polinomio tiene una estructura que sugiere la presencia de un patrón cuadrático, cúbico u otras formas reconocibles.

## Método

El cambio de variable consiste en sustituir una expresión algebraica compleja por una nueva variable auxiliar, factorizar la expresión simplificada y luego revertir el cambio para obtener la factorización del polinomio original.

En general, si tenemos una expresión de la forma:

$$P(x) = f(g(x))$$

Podemos definir una nueva variable, por ejemplo $$u=g(x)$$, de manera que el polinomio tome una forma más sencilla $$P(u)$$, facilitando la factorización. Una vez factorizado, revertimos el cambio sustituyendo  por su expresión original.

## Cuándo se usa

Este método es útil cuando el polinomio presenta:

* **Exponentes dobles o repetidos**, como en $$x^4, x^6, x^8$$, que pueden reducirse a una forma cuadrática.
* **Estructuras cuadráticas en funciones compuestas**, como $$(x+1)^2, \sin^2 x, e^2x$$.
* **Patrones reconocibles**, donde los términos pueden reagruparse para formar expresiones más simples.
* **Resolución de ecuaciones**, por ejemplo ecuaciones exponenciales.

## Ejemplos Concretos

### Ejemplo 1: Factorización de un polinomio con exponentes dobles

Factorizar:

$$P(x)=x^4-5 x^2+4$$

Comenzamos por notar que este polinio también se puede expresar como:

$$P(x)=(x^2)^2-5 (x^2)+4$$

En este caso, identificar que $$x^2$$ es un patrón repetitivo es clave para utilizar la ténica de factorización por cambio de variable.

#### Paso 1: Definimos un cambio de variable:

Nótese que si decimos que: 

$$\begin{aligned}
f(x)=x^2-5x+4 \qquad\qquad \text{y} \qquad\qquad g(x)=x^2
\end{aligned}$$  

Entonces podemos definir nuestro polinomio como:

$$\begin{aligned}
P(x)&=f(g(x)) \\
    &=f(x^2) \\
    &=(x^2)^2-5(x^2)+4\\
    &=x^4-5x^2+4
\end{aligned}$$

Entonces, podemos usar esta idea para redefinir, de forma más sencilla, nuestro polinomio en términos de una variable que represente a $$g(x)$$.

Sea $$u=x^2$$, entonces $$u^2=(x^2)^2 = x^4$$

En consecuencia, podemos reescribir el polinomio original en términos de $$u$$:

$$P(u)=u^2-5u+4$$

Observemos que si reemplzamos $$u$$ por su valor obtenemos el polinomio original:

$$P(x^2) = x^4-5x^2+4$$

Esa es la clave del cambio de variable, ahora $$u$$ abstrae y oculta una parte de la complejidad del polinomio original haciéndolo más accesible y sencillo para factorizar por otros métodos.

#### Paso 2: Factorizamos la expresión cuadrática:

$$\begin{aligned}
u^2-5u+4\\
=(u-4)(u-1)
\end{aligned}$$

#### Paso 3: Revertimos el cambio de variable

Reemplazamo $$u$$ por su valor original $$x^2$$

$$\begin{aligned}
(u-4)(u-1)\\
=\left(x^2-4\right)\left(x^2-1\right)
\end{aligned}$$

#### Paso 4: Factorizamos completamente usando diferencia de cuadrados:

$$(x-2)(x+2)(x-1)(x+1)$$

### Ejemplo 2: Factorización de una expresión con un binomio elevado

Factorizar:

$$
(x+1)^2-5(x+1)+6
$$


#### Paso 1: Definimos el cambio de variable:

De nuevo, la clave está en identificar el patrón repetitivo:

$$
u=x+1
$$

Reescribimos la expresión:

$$
u^2-5 u+6
$$

#### Paso 2: Factorizamos:

$$
(u-3)(u-2)
$$

#### Paso 3: Sustituimos de nuevo $$u=x+1$$:

$$\begin{aligned}
(u-3)(u-2) \\
(x+1-3)(x+1-2) \\
(x-2)(x-1)
\end{aligned}$$


### Ejemplo 3: Factorización de expresiones trigonométricas

Factorizar:

$$
\sin ^4 x-2 \sin ^2 x+1
$$

#### Paso 1: Definimos el cambio de variable:

$$
u=\sin ^2 x
$$

Reescribimos la expresión:

$$
u^2-2 u+1
$$

#### Paso 2: Factorizamos:

$$
(u-1)(u-1)=(u-1)^2
$$

#### Paso 3: Revertimos el cambio:

$$
\left(\sin ^2 x-1\right)^2
$$

#### Paso 4: Usamos diferencia de cuadrados:

$$
(\sin x-1)(\sin x+1)
$$

#### Resultado Final:

$$
(\sin x-1)(\sin x+1)(\sin x-1)(\sin x+1)
$$


### Ejemplo 4: Factorización de expresiones radicales

Factorizar:

$$
\frac{\sqrt{x+9}-3}{x}
$$

#### Paso 1: Definimos el cambio de variable:

$$
\begin{aligned}
u=\sqrt{x+9}\\
u^2=x+9\\
x=u^2-9
\end{aligned}
$$

Reescribimos la expresión:

$$
\frac{u-3}{u^2-9}
$$

#### Paso 2: Factorizamos:

$$
\begin{aligned}
\frac{\cancel{(u-3)}}{(u+3)\cancel{(u-3)}} = \frac{1}{u+3}
\end{aligned}
$$

#### Paso 3: Revertimos el cambio:

$$
\frac{1}{\sqrt{x+9}+3}
$$


### Ejemplo 5: Solución de ecuaciones exponenciales

Determine el conjunto solución de:

$$2^x + 4^x= 72$$


#### Paso 1: Identificar patrón exponencial:

$$\begin{aligned}
2^x + 4^x = 72\\
2^x + (2^2)^x = 72\\
(2^x)^2 + 2^x -72 =0\\
\end{aligned}$$

#### Paso 2: Definimos el cambio de variable:

Sea $$u=2^x$$:

$$u^2 + u - 72 =0 $$

#### Paso 3: Factorizamos:

$$(u-8)(u+9)=0$$

Es decir $$u=8$$ o $$u=-9$$.

#### Paso 3: Revertimos el cambio:

$$\begin{aligned}
u=8\\
2^x = 8\\
2^x = 2^3\\
x = 3\\
\end{aligned}$$

Luego, como no existe $$2^x = -9$$, el conjunto solución es $$S=\{3\}$$.

## Conclusión

El método de factorización por cambio de variable es una técnica poderosa para simplificar y resolver polinomios y expresiones algebraicas. Se basa en reconocer estructuras cuadráticas u otras formas factorizables y aplicar una sustitución que haga más sencillo el proceso de factorización.

Este método es ampliamente utilizado en algebra básica y avanzada, especialmente en ecuaciones polinómicas, trigonometría y cálculo. Su aplicación permite resolver problemas complejos de manera ordenada y eficiente.

## Otros Métodos de Factorización:

* [División Sintética]({% post_url 2025-03-04-fact-division-sintetica %}).
* [Completar Cuadrados]({% post_url 2025-03-10-fact-completar-cuadrados %}).
* [Por Inspección]({% post_url 2025-03-03-fact-inspeccion %}).
* [Factor Común]({% post_url 2024-04-04-factorizacion-por-factor-comun %}).

## Bibliografía Consultada

{% bibliography --file factoring%}
