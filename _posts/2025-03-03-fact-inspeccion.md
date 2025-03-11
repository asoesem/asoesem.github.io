---
layout: post
title: Factorización por Inspección
description: Guía de como factorizar expresiones algebraicas por inspección.
date: 2025-03-03T11:00:00-06:00
author: edalorzo
image: '/images/59.png'
tags: [precálculo,álgebra,factorización]
commissions: [cofoma]
featured: true
comments: false
share: false
---

La factorización por inspección es un método intuitivo y directo para descomponer polinomios en factores sin necesidad de procedimientos algebraicos complejos. Se basa en la observación de la estructura del polinomio y en la identificación rápida de sus factores.

Este método es especialmente útil cuando el polinomio presenta patrones evidentes, como productos notables, coeficientes pequeños o raíces enteras fácilmente identificables.

## Trinomio de la forma $$x^2 + bx + c$$:

**Por inspección**, se buscan dos cantidades cuyo producto sea igual al tercer término y cuya suma sea igual al segundo.

Por ejemplo, para factorizar:

$$x^2-7x-18$$

Debemos buscar dos valores que multiplicados nos den -18 y sumados nos den -7.

<img src="{{site.baseurl}}/images/fact-inspect-1.png" alt="por-inspeccion-1" style="display:block;margin:auto;width:25%"/>

Luego, la expresión factorizada sería:

$$(x-9)(x+2)$$

## Trinomio de la forma $$ax^2 + bx + c$$:

Se multiplican los coeficientes del primer y tercer término $$(a \cdot c)$$, y, por inspección, se buscan dos números que multiplicados sean igual a $$(a \cdot c)$$ y sumados sean igual al coeficiente del segundo término.
    
Por ejemplo, para factorizar:

$$6x^2 - 7x - 3$$


* Se calcula: $$a \cdot c = 6 \cdot -3 = -18$$: 
* Se busca dos números que multiplicados den $$-18$$ y sumados $$-7$$.
* En este caso $$-9 \cdot 2 = -18$$ y $$-9 + 2 = -7$$.

    
Se procede a factorizar por agrupación de términos:
    
$$\begin{aligned}
&=6x^2 -7x - 3 \\
&= 6x^2 + 2x - 9x -3 \\
&= (6x^2 + 2x) - (9x + 3) \\
&= 2x(3x + 1) - 3(3x + 1) \\
&= (3x+1)(2x-3)
\end{aligned}$$

Luego, la factorización es:

$$(3x+1)(2x-3)$$

Este trinomio también se puede factorizar utilizando la ténica de pareo cruzado mostrado previamente, aunque encontrar los términos es un poquito más difícil.

<img src="{{site.baseurl}}/images/fact-inspect-2.png" alt="por-inspeccion-2" style="display:block;margin:auto;width:25%"/>

### Alternativa usando cambio de variable

Otra alternativa para este tipo de expresión algebraica consiste en multiplicar y dividir los términos del trinomio por el coeficiente del término cuadrático, y luego usar la [factorización por cambio de variable]({% post_url 2025-03-07-fact-cambio-de-variable %}) para luego aplicar la técnica de factorización del trinomio de la forma $$x^2+bx+c$$ previamente discutida.

Por ejemplo:
                        
$$6x^2 - 7x - 3 =\frac{6(6x^2 - 7x - 3)}{6} =\frac{(6x)^2 - 7(6x) - 18)}{6}$$

Luego $$u=6x$$, y obtenemos $$u^2-7u-18$$, que podemos factorizar por inspección utilizando la misma técnica que con el trinomio de la forma $$x^2+bx+c$$:

$$\frac{u^2-7u-18}{6} = \frac{(u+2)(u-9)}{6} = \frac{(6x+2)(6x-9)}{6}$$

Finalmente, se obtiene el factor común de cada binomio y se simplifica la fracción:

$$\frac{(6x+2)(6x-9)}{6} = \frac{2(3x+1)3(2x-3)}{6} = \frac{\cancel{6}(3x+1)(2x-3)}{\cancel{6}}$$

Luego, la factorización es:

$$6x^2 - 7x - 3 = (3x+1)(2x-3)$$

## Conclusión

La factorización por inspección es un método rápido y eficiente para descomponer polinomios cuando se pueden identificar patrones evidentes. Si bien no siempre es aplicable, es una herramienta fundamental en álgebra que facilita la resolución de ecuaciones y el análisis matemático.

Con suficiente práctica, el reconocimiento de factores se vuelve intuitivo y permite resolver problemas de manera muy rápida.

## Otros Métodos de Factorización:

* [Cambio de Variable]({% post_url 2025-03-07-fact-cambio-de-variable %}).
* [Completar Cuadrados]({% post_url 2025-03-10-fact-completar-cuadrados %}).
* [División Sintética]({% post_url 2025-03-04-fact-division-sintetica %}).
* [Factor Común]({% post_url 2024-04-04-factorizacion-por-factor-comun %}).

## Bibliografía Consultada

{% bibliography --file factoring%}


[1]: https://es.wikipedia.org/wiki/Teorema_del_resto
[2]: https://es.wikipedia.org/wiki/Teorema_del_factor
[3]: https://es.wikipedia.org/wiki/Regla_de_Ruffini