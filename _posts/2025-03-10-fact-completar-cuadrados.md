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
---

## ¿Cuándo y por qué usar el completado de cuadrados?

El método de factorización por completado de cuadrados es útil cuando otros métodos más directos (como factor común, diferencia de cuadrados, o factorización por agrupación) no funcionan. Es especialmente valioso para:

* **Trinomios cuadráticos** que no se factorizan fácilmente por inspección
* **Expresiones con términos de grado alto** que contienen patrones cuadráticos ocultos
* **Preparar expresiones** para aplicar otros métodos como diferencia de cuadrados

Este método nos permite "construir" un cuadrado perfecto agregando y quitando el mismo término, manteniendo la expresión igual pero revelando una estructura factorizable.

## Conceptos previos necesarios

Antes de comenzar, es importante recordar algunos conceptos clave:

**Cuadrado perfecto**: Una expresión que resulta de elevar otra al cuadrado: 

$$\begin{aligned}x^2& \\9y^2 &= (3y)^2 \\25x^4 &= (5x^2)^2\end{aligned}$$

**Trinomio cuadrático perfecto**: El resultado de elevar un binomio al cuadrado:

$$a^2 \pm 2ab + b^2 = (a \pm b)^2$$

**La idea central**: Si tenemos una expresión que "casi" es un trinomio cuadrático perfecto, podemos completarla agregando y restando el término faltante.

## Los tres casos principales

Organizaremos los casos de más simple a más complejo:

* [Caso 1: Trinomio cuadrático simple](#caso-1-trinomio-cuadrático-simple)
* [Caso 2: Binomio con dos cuadrados perfectos](#caso-2-binomio-con-dos-cuadrados-perfectos)  
* [Caso 3: Trinomio con dos cuadrados perfectos](#caso-3-trinomio-con-dos-cuadrados-perfectos)

### Caso 1: Trinomio cuadrático simple

Este es el caso más común y útil para estudiantes. Se aplica a trinomios de la forma $$ax^2 + bx + c$$ donde el primer término ya es un cuadrado perfecto (o se puede convertir en uno).

**La estrategia**: 

1. Identificar el primer término como un cuadrado: $$(px)^2$$
2. Usar el segundo término para determinar qué debería ser el tercer término en un trinomio cuadrático perfecto
3. Agregar y restar ese "término faltante"
4. Factorizar como $$(px + q)^2 - r$$ y continuar si es posible

#### Ejemplo 1A (Simple): 

Factorizar: $$x^2 + 6x + 5$$

##### Paso 1: Reconocer el primer término como cuadrado
$$(x)^2 + 6x + 5$$

Aquí $$p = 1$$, entonces el trinomio cuadrático perfecto sería $$(x + q)^2 = x^2 + 2qx + q^2$$

##### Paso 2: Determinar qué debiera ser $$q$$
Comparando los dos segundos términos $$6x = 2qx$$, obtenemos $$q = 3$$

Entonces el trinomio cuadrático perfecto sería: $$x^2 + 6x + 9 = (x + 3)^2$$

##### Paso 3: Completar el cuadrado

Seguidamente, sumamos y restamos el tercer término para mantener el mismo valor polinomial original:

$$\begin{aligned}
x^2 + 6x + 5 &= x^2 + 6x + 9 - 9 + 5 \\
&= (x^2 + 6x + 9) - 4 \\
&= (x + 3)^2 - 4
\end{aligned}$$

##### Paso 4: Factorizar como diferencia de cuadrados
$$\begin{aligned}
(x + 3)^2 - 4 &= (x + 3)^2 - 2^2 \\
&= [(x + 3) + 2][(x + 3) - 2] \\
&= (x + 5)(x + 1)
\end{aligned}$$

##### Verificación:
$$(x + 5)(x + 1) = x^2 + x + 5x + 5 = x^2 + 6x + 5$$ ✓

#### Ejemplo 1B (Más complejo): 

Factorizar: $$4x^2 + 4x - 15$$

##### Paso 1: Reconocer el primer término como cuadrado
$$4x^2 = (2x)^2$$, entonces tenemos $$(2x)^2 + 4x - 15$$

##### Paso 2: Determinar el término faltante
Para $$(2x + q)^2 = 4x^2 + 4qx + q^2$$

Comparando $$4x = 4qx$$, obtenemos $$q = 1$$

El trinomio perfecto sería: $$4x^2 + 4x + 1 = (2x + 1)^2$$

##### Paso 3: Completar el cuadrado
$$\begin{aligned}
4x^2 + 4x - 15 &= 4x^2 + 4x + 1 - 1 - 15 \\
&= (4x^2 + 4x + 1) - 16 \\
&= (2x + 1)^2 - 16
\end{aligned}$$

##### Paso 4: Factorizar como diferencia de cuadrados
$$\begin{aligned}
(2x + 1)^2 - 16 &= (2x + 1)^2 - 4^2 \\
&= [(2x + 1) + 4][(2x + 1) - 4] \\
&= (2x + 5)(2x - 3)
\end{aligned}$$

##### Verificación:
$$(2x + 5)(2x - 3) = 4x^2 - 6x + 10x - 15 = 4x^2 + 4x - 15$$ ✓

### Caso 2: Binomio con dos cuadrados perfectos

Este caso aparece cuando tenemos solo dos términos que son cuadrados perfectos, como $$a^2 + b^2$$. Para factorizar, necesitamos "crear" el término medio de un trinomio cuadrático perfecto.

**La estrategia**: 
1. Identificar los dos cuadrados perfectos: $$a^2$$ y $$b^2$$
2. Calcular el término medio que necesitaríamos: $$2ab$$
3. Sumar y restar ese término: $$a^2 + b^2 + 2ab - 2ab$$
4. Reorganizar: $$(a^2 + 2ab + b^2) - 2ab = (a + b)^2 - 2ab$$
5. Factorizar si es posible (frecuentemente como diferencia de cuadrados)

#### Ejemplo 2A (Simple): 

Factorizar: $$x^2 + 1$$

##### Paso 1: Identificar los cuadrados perfectos
$$x^2 + 1^2$$, donde $$a = x$$ y $$b = 1$$

##### Paso 2: Calcular el término medio necesario
Para $$(x + 1)^2$$, necesitaríamos: $$2(x)(1) = 2x$$

##### Paso 3: Sumar y restar el término medio
$$\begin{aligned}
x^2 + 1 &= x^2 + 1 + 2x - 2x \\
&= (x^2 + 2x + 1) - 2x \\
&= (x + 1)^2 - 2x
\end{aligned}$$

**Nota**: En este ejemplo, $$(x + 1)^2 - 2x$$ no se puede factorizar más sobre los reales, pero el método nos da una forma alternativa de escribir la expresión.

#### Ejemplo 2B (Más complejo): 

Factorizar: $$x^4 + 4$$

##### Paso 1: Identificar los cuadrados perfectos
$$(x^2)^2 + 2^2$$

##### Paso 2: Calcular el término medio necesario
Para $$(x^2 + 2)^2$$, necesitaríamos: $$2(x^2)(2) = 4x^2$$

##### Paso 3: Sumar y restar el término medio
$$\begin{aligned}
x^4 + 4 &= x^4 + 4 + 4x^2 - 4x^2 \\
&= (x^4 + 4x^2 + 4) - 4x^2 \\
&= (x^2 + 2)^2 - (2x)^2
\end{aligned}$$

##### Paso 4: Factorizar como diferencia de cuadrados
$$\begin{aligned}
(x^2 + 2)^2 - (2x)^2 &= [(x^2 + 2) + 2x][(x^2 + 2) - 2x] \\
&= (x^2 + 2x + 2)(x^2 - 2x + 2)
\end{aligned}$$

##### Verificación:
$$(x^2 + 2x + 2)(x^2 - 2x + 2) = x^4 + 4$$ ✓

(Al expandir: $$x^4 - 2x^3 + 2x^2 + 2x^3 - 4x^2 + 4x + 2x^2 - 4x + 4 = x^4 + 4$$)

### Caso 3: Trinomio con dos cuadrados perfectos

Este caso aparece cuando tenemos un trinomio donde el primer y tercer términos son cuadrados perfectos, pero el segundo término no coincide con lo que necesitaríamos para un trinomio cuadrático perfecto.

**La estrategia**: 
1. Identificar los dos cuadrados perfectos: $$a^2$$ y $$b^2$$
2. Calcular qué término medio necesitaríamos para $$(a \pm b)^2$$: $$2ab$$
3. Sumar y restar ese término para completar el cuadrado
4. Reorganizar como $$(a \pm b)^2 \pm \text{término restante}$$
5. Factorizar la expresión resultante si es posible

#### Ejemplo 3A (Simple): 

Factorizar: $$x^2 + xy + y^2$$

##### Paso 1: Identificar los cuadrados perfectos
$$x^2$$ y $$y^2$$ son cuadrados perfectos

##### Paso 2: Determinar el término medio para un trinomio perfecto
Para $$(x + y)^2 = x^2 + 2xy + y^2$$, necesitaríamos $$2xy$$ como término medio

Pero tenemos $$xy$$, así que nos falta $$xy$$ adicional

##### Paso 3: Sumar y restar el término faltante
$$\begin{aligned}
x^2 + xy + y^2 &= x^2 + xy + y^2 + xy - xy \\
&= x^2 + 2xy + y^2 - xy \\
&= (x + y)^2 - xy
\end{aligned}$$

**Nota**: Esta expresión generalmente no se puede factorizar más sobre los reales, pero el método nos da una forma útil de reescribirla.

#### Ejemplo 3B (Más complejo): 

Factorizar: $$x^4 + x^2y^2 + y^4$$

##### Paso 1: Identificar los cuadrados perfectos
$$(x^2)^2$$ y $$(y^2)^2$$ son cuadrados perfectos

##### Paso 2: Determinar el término medio necesario
Para $$(x^2 + y^2)^2 = x^4 + 2x^2y^2 + y^4$$, necesitaríamos $$2x^2y^2$$

Tenemos $$x^2y^2$$, así que nos falta $$x^2y^2$$ adicional

##### Paso 3: Sumar y restar el término faltante
$$\begin{aligned}
x^4 + x^2y^2 + y^4 &= x^4 + x^2y^2 + y^4 + x^2y^2 - x^2y^2 \\
&= x^4 + 2x^2y^2 + y^4 - x^2y^2 \\
&= (x^2 + y^2)^2 - x^2y^2 \\
&= (x^2 + y^2)^2 - (xy)^2
\end{aligned}$$

##### Paso 4: Factorizar como diferencia de cuadrados
$$\begin{aligned}
(x^2 + y^2)^2 - (xy)^2 &= [(x^2 + y^2) + xy][(x^2 + y^2) - xy] \\
&= (x^2 + xy + y^2)(x^2 - xy + y^2)
\end{aligned}$$

##### Verificación:
$$(x^2 + xy + y^2)(x^2 - xy + y^2) = x^4 + x^2y^2 + y^4$$ ✓

## Errores comunes a evitar

### 1. Olvidar restar el término que se suma
**Error**: $$x^2 + 1 = x^2 + 2x + 1 = (x + 1)^2$$

**Correcto**: $$x^2 + 1 = x^2 + 2x + 1 - 2x = (x + 1)^2 - 2x$$

### 2. Errores en el cálculo del término medio
**Error**: Para completar $$(2x)^2 + 4x$$, usar $$2(2x)(1) = 4x$$ como término medio

**Correcto**: El término medio de $$(2x + q)^2$$ es $$2(2x)(q) = 4qx$$. Si tenemos $$4x$$, entonces $$q = 1$$

### 3. No verificar la respuesta final
Siempre expande el resultado final para verificar que coincida con la expresión original.

## Ejercicios de práctica

**Nivel Básico:**
1. $$x^2 + 4x + 1$$
2. $$x^2 + 8x + 7$$
3. $$x^2 + 9$$

**Nivel Intermedio:**
4. $$4x^2 + 8x + 1$$
5. $$x^2 + 2xy + 2y^2$$
6. $$9x^2 + 6x - 8$$

**Nivel Avanzado:**
7. $$x^4 + 2x^2 + 5$$
8. $$x^4 + x^2y^2 + 4y^4$$

## Resumen y conclusión

El completado de cuadrados es una técnica fundamental que:

* ✓ **Funciona cuando otros métodos fallan**
* ✓ **Se aplica en tres casos principales**: trinomios cuadráticos simples, binomios con cuadrados perfectos, y trinomios con dos cuadrados perfectos
* ✓ **Requiere práctica** para dominar el cálculo de términos medios
* ✓ **Siempre debe verificarse** expandiendo el resultado

**Progreso sugerido de aprendizaje:**
1. Domina el [Caso 1](#caso-1-trinomio-cuadrático-simple) con trinomios cuadráticos simples
2. Practica el [Caso 2](#caso-2-binomio-con-dos-cuadrados-perfectos) con binomios
3. Aborda el [Caso 3](#caso-3-trinomio-con-dos-cuadrados-perfectos) con trinomios complejos

Con la práctica, esta técnica se vuelve invaluable no solo para factorización, sino también para resolver ecuaciones cuadráticas y problemas de cálculo.

## Otros Métodos de Factorización:

* [División Sintética]({% post_url 2025-03-04-fact-division-sintetica %}).
* [Cambio de Variable]({% post_url 2025-03-07-fact-cambio-de-variable %}).
* [Por Inspección]({% post_url 2025-03-03-fact-inspeccion %}).
* [Factor Común]({% post_url 2024-04-04-factorizacion-por-factor-comun %}).

## Bibliografía Consultada

{% bibliography --file factoring%}
