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

## ¿Por qué cambiar variables?

Imagina que tienes que factorizar $$x^4 - 5x^2 + 4$$. A primera vista parece complicado, pero si observas bien, puedes verlo como:

$$(\text{algo})^2 - 5(\text{algo}) + 4$$

donde "algo" = $$x^2$$. ¡Esto se convierte en un trinomio cuadrático simple que sabemos factorizar!

La factorización por cambio de variable es exactamente esta estrategia: **simplificar expresiones complejas sustituyendo partes repetitivas con una variable más simple**.

## ¿Cuándo es útil este método?

Este método es especialmente valioso cuando:

* **Otros métodos no funcionan**: Factor común, agrupación, diferencia de cuadrados no aplican
* **Hay patrones repetitivos**: La misma expresión aparece varias veces
* **Queremos simplificar**: Convertir algo complejo en algo familiar

## La idea central del método

El proceso es sorprendentemente simple:

1. 🔍 **Buscar patrones**: ¿Hay expresiones que se repiten?
2. 🔄 **Simplificar**: Llamar a esa expresión "$$u$$"  
3. ⚙️ **Factorizar**: El problema se vuelve más fácil
4. ↩️ **Regresar**: Sustituir "$$u$$" por la expresión original
5. ✅ **Verificar**: ¡Siempre confirma tu respuesta!

## Cuándo aplicar este método

Busca estas señales que indican que el cambio de variable puede ayudar:

* 🔢 **Exponentes dobles**: $$x^4, x^6, x^8$$ (pueden convertirse en cuadráticas)
* 🔄 **Expresiones repetidas**: $$(x+1)^2, (x+1), (2x-3)^4, (2x-3)^2$$
* 🎯 **Patrones familiares ocultos**: Algo que "casi" parece un trinomio cuadrático
* ⚠️ **Cuando otros métodos fallan**: Si factor común y agrupación no funcionan

## Ejemplos paso a paso

### Ejemplo 1: Polinomio con exponentes dobles (Básico)

Factorizar: $$x^4 - 5x^2 + 4$$

#### Paso 1: Buscar el patrón

¿Notaste que podemos escribir esto como?

$$(x^2)^2 - 5(x^2) + 4$$

Aquí vemos que $$x^2$$ aparece dos veces. ¡Este es nuestro patrón!

#### Paso 2: Hacer el cambio de variable

Llamemos $$u = x^2$$

Entonces $$u^2 = (x^2)^2 = x^4$$

Nuestro polinomio se convierte en:
$$u^2 - 5u + 4$$

¡Esto es un trinomio cuadrático simple que sabemos factorizar!

#### Paso 3: Factorizar el trinomio cuadrático

Buscamos dos números que multiplicados den 4 y sumados den -5:
$$-4 \times (-1) = 4$$ y $$-4 + (-1) = -5$$ ✓

$$u^2 - 5u + 4 = (u - 4)(u - 1)$$

#### Paso 4: Regresar a la variable original

Sustituimos $$u = x^2$$:

$$(u - 4)(u - 1) = (x^2 - 4)(x^2 - 1)$$

#### Paso 5: Factorizar completamente

Ambos términos son diferencias de cuadrados:

$$x^2 - 4 = x^2 - 2^2 = (x - 2)(x + 2)$$

$$x^2 - 1 = x^2 - 1^2 = (x - 1)(x + 1)$$

**Resultado final**: $$(x - 2)(x + 2)(x - 1)(x + 1)$$

#### Verificación:
Expandiendo: $$(x^2 - 4)(x^2 - 1) = x^4 - x^2 - 4x^2 + 4 = x^4 - 5x^2 + 4$$ ✓

### Ejemplo 2: Expresión con binomio (Intermedio)

Factorizar: $$(x+1)^2 - 5(x+1) + 6$$

#### Paso 1: Identificar el patrón

¿Ves que $$(x+1)$$ aparece dos veces? ¡Ese es nuestro patrón!

#### Paso 2: Hacer el cambio de variable

Llamemos $$u = x + 1$$

La expresión se convierte en:
$$u^2 - 5u + 6$$

#### Paso 3: Factorizar el trinomio

Buscamos dos números que multiplicados den 6 y sumados den -5:
$$-3 \times (-2) = 6$$ y $$-3 + (-2) = -5$$ ✓

$$u^2 - 5u + 6 = (u - 3)(u - 2)$$

#### Paso 4: Regresar a la variable original

Sustituimos $$u = x + 1$$:

$$(u - 3)(u - 2) = (x + 1 - 3)(x + 1 - 2) = (x - 2)(x - 1)$$

**Resultado final**: $$(x - 2)(x - 1)$$

#### Verificación:
Expandiendo: $$(x - 2)(x - 1) = x^2 - x - 2x + 2 = x^2 - 3x + 2$$

Substituyendo $$x + 1 = u$$, entonces $$x = u - 1$$:

$$(u - 1)^2 - 3(u - 1) + 2 = u^2 - 2u + 1 - 3u + 3 + 2 = u^2 - 5u + 6$$

Y finalmente: $$(x + 1)^2 - 5(x + 1) + 6$$ ✓


### Ejemplo 3: Polinomio de grado superior (Intermedio-Avanzado)

Factorizar: $$x^4 + x^2 - 2$$

#### Paso 1: Identificar el patrón

Podemos escribir esto como:
$$(x^2)^2 + (x^2) - 2$$

Aquí $$x^2$$ es nuestro patrón repetitivo.

#### Paso 2: Hacer el cambio de variable

Llamemos $$u = x^2$$

La expresión se convierte en:
$$u^2 + u - 2$$

#### Paso 3: Factorizar el trinomio

Buscamos dos números que multiplicados den -2 y sumados den 1:
$$2 \times (-1) = -2$$ y $$2 + (-1) = 1$$ ✓

$$u^2 + u - 2 = (u + 2)(u - 1)$$

#### Paso 4: Regresar a la variable original

Sustituimos $$u = x^2$$:

$$(u + 2)(u - 1) = (x^2 + 2)(x^2 - 1)$$

#### Paso 5: Factorizar completamente

$$x^2 - 1$$ es una diferencia de cuadrados:
$$x^2 - 1 = (x - 1)(x + 1)$$

$$x^2 + 2$$ no se puede factorizar más sobre los reales.

**Resultado final**: $$(x^2 + 2)(x - 1)(x + 1)$$

#### Verificación:
Expandiendo: $$(x^2 + 2)(x^2 - 1) = x^4 - x^2 + 2x^2 - 2 = x^4 + x^2 - 2$$ ✓

### Ejemplo 4: Expresión con trinomio en el cambio (Avanzado)

Factorizar: $$(x^2 + 1)^2 - 3(x^2 + 1) + 2$$

#### Paso 1: Identificar el patrón

¿Ves que $$(x^2 + 1)$$ aparece dos veces? ¡Ese es nuestro patrón!

#### Paso 2: Hacer el cambio de variable

Llamemos $$u = x^2 + 1$$

La expresión se convierte en:
$$u^2 - 3u + 2$$

#### Paso 3: Factorizar el trinomio

Buscamos dos números que multiplicados den 2 y sumados den -3:
$$-2 \times (-1) = 2$$ y $$-2 + (-1) = -3$$ ✓

$$u^2 - 3u + 2 = (u - 2)(u - 1)$$

#### Paso 4: Regresar a la variable original

Sustituimos $$u = x^2 + 1$$:

$$(u - 2)(u - 1) = (x^2 + 1 - 2)(x^2 + 1 - 1) = (x^2 - 1)(x^2)$$

#### Paso 5: Factorizar completamente

$$x^2 - 1$$ es una diferencia de cuadrados:
$$x^2 - 1 = (x - 1)(x + 1)$$

**Resultado final**: $$x^2(x - 1)(x + 1)$$

#### Verificación:
Expandiendo: $$x^2(x^2 - 1) = x^4 - x^2$$

Sustituyendo $$u = x^2 + 1$$:

$$(x^2 + 1)^2 - 3(x^2 + 1) + 2 = u^2 - 3u + 2 = (u-2)(u-1)$$

$$=(x^2 + 1 - 2)(x^2 + 1 - 1) = (x^2 - 1)(x^2) = x^4 - x^2$$ ✓

## Casos avanzados y aplicaciones especiales

Una vez que domines los casos básicos, el cambio de variable se extiende a contextos más avanzados:

### Aplicación en trigonometría

Factorizar: $$\sin^4 x - 2\sin^2 x + 1$$

Con $$u = \sin^2 x$$: 

$$u^2 - 2u + 1 = (u - 1)^2 = (\sin^2 x - 1)^2$$

### Aplicación en ecuaciones exponenciales

Resolver: $$2^x + 4^x = 72$$

Con $$u = 2^x$$: 

$$u + u^2 = 72 \Rightarrow u^2 + u - 72 = 0$$

Factorizando: $$(u - 8)(u + 9) = 0$$, entonces $$u = 8$$ (ya que $$u = 2^x > 0$$)

Por tanto: $$2^x = 8 = 2^3$$, así $$x = 3$$

### Aplicación en expresiones radicales

Simplificar: $$\frac{\sqrt{x+9} - 3}{x}$$

Con $$u = \sqrt{x+9}$$, entonces $$x = u^2 - 9$$:

$$\frac{u - 3}{u^2 - 9} = \frac{u - 3}{(u-3)(u+3)} = \frac{1}{u + 3} = \frac{1}{\sqrt{x+9} + 3}$$

## Errores comunes a evitar

### 1. Olvidar regresar a la variable original
**Error**: Dejar la respuesta como $$(u - 4)(u - 1)$$

**Correcto**: Sustituir de vuelta: $$(x^2 - 4)(x^2 - 1)$$

### 2. No factorizar completamente
**Error**: Dejar $$(x^2 - 4)(x^2 - 1)$$ como respuesta final

**Correcto**: Continuar factorizando diferencias de cuadrados: $$(x - 2)(x + 2)(x - 1)(x + 1)$$

### 3. No verificar la respuesta
**Error**: No comprobar que la factorización es correcta

**Correcto**: Siempre expandir la respuesta final para verificar

### 4. Usar cambio de variable innecesario
**Error**: Intentar cambio de variable en $$x^2 + 3x + 2$$

**Correcto**: Este se factoriza directamente como $$(x + 1)(x + 2)$$

## Ejercicios de práctica

**Nivel Básico:**
1. $$x^4 - 10x^2 + 9$$
2. $$x^4 + 2x^2 - 8$$
3. $$(x - 1)^2 - 4(x - 1) + 3$$

**Nivel Intermedio:**
4. $$x^4 - 6x^2 + 5$$
5. $$(2x + 3)^2 - 7(2x + 3) + 12$$
6. $$x^6 - 9x^3 + 8$$

**Nivel Avanzado:**
7. $$(x^2 - 2x)^2 - 5(x^2 - 2x) + 6$$
8. $$x^8 - 17x^4 + 16$$

## Resumen y conclusión

El cambio de variable es una técnica fundamental que:

* ✓ **Simplifica expresiones complejas** convirtiéndolas en formas conocidas
* ✓ **Funciona especialmente bien** con patrones repetitivos
* ✓ **Se aplica progresivamente**: desde polinomios simples hasta casos avanzados
* ✓ **Requiere práctica** para reconocer cuándo usarlo
* ✓ **Siempre debe verificarse** el resultado final

**Progreso sugerido de aprendizaje:**
1. Domina polinomios con exponentes dobles ($$x^4$$, $$x^6$$)
2. Practica con binomios elevados ($$(x+1)^2$$, $$(2x-3)^2$$)
3. Aborda expresiones más complejas progresivamente
4. Explora aplicaciones avanzadas cuando tengas confianza

Con la práctica, identificarás rápidamente cuándo un cambio de variable puede transformar un problema complejo en uno simple y familiar.

## Otros Métodos de Factorización:

* [División Sintética]({% post_url 2025-03-04-fact-division-sintetica %}).
* [Completar Cuadrados]({% post_url 2025-03-10-fact-completar-cuadrados %}).
* [Por Inspección]({% post_url 2025-03-03-fact-inspeccion %}).
* [Factor Común]({% post_url 2024-04-04-factorizacion-por-factor-comun %}).

## Bibliografía Consultada

{% bibliography --file factoring%}
