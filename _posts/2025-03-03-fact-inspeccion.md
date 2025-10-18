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
---

## ¿Qué es la factorización por inspección?

Imagina que tienes que factorizar $$x^2 + 5x + 6$$. En lugar de usar fórmulas complejas, puedes **"ver"** rápidamente que:

- Necesitas dos números que multiplicados den 6
- Y que sumados den 5
- ¡Son 2 y 3! Porque $$2 \times 3 = 6$$ y $$2 + 3 = 5$$

Entonces: $$x^2 + 5x + 6 = (x + 2)(x + 3)$$

La factorización por inspección es exactamente esto: **desarrollar la habilidad de "ver" los factores directamente**, sin procedimientos largos.

## ¿Cuándo usar este método?

La inspección es tu **primera opción** cuando:

🔍 **Los números son pequeños**: Coeficientes como 1, 2, 3, 6, etc.

⚡ **Quieres ser rápido**: Es el método más veloz cuando funciona

🎯 **Ves patrones obvios**: Productos notables o estructuras familiares

⚠️ **Otros métodos parecen complicados**: Antes de usar fórmulas, intenta inspección

## Desarrollando tu "visión" matemática

La inspección **no es magia** – es una habilidad que se desarrolla con práctica. Aquí está cómo entrenar tu mente:

## Caso 1: Trinomios simples ($$x^2 + bx + c$$)

### La estrategia básica

Para $$x^2 + bx + c$$, buscamos dos números $$m$$ y $$n$$ tales que:
- $$m \times n = c$$ (producto = término constante)
- $$m + n = b$$ (suma = coeficiente de $$x$$)

Entonces: $$x^2 + bx + c = (x + m)(x + n)$$

### Ejemplo 1A: Caso positivo simple

Factorizar: $$x^2 + 7x + 12$$

#### Paso 1: Identificar qué buscamos
- Producto: $$m \times n = 12$$
- Suma: $$m + n = 7$$

#### Paso 2: Listar factores de 12
$$12 = 1 \times 12, \quad 2 \times 6, \quad 3 \times 4$$

#### Paso 3: Probar las sumas
- $$1 + 12 = 13$$ ❌
- $$2 + 6 = 8$$ ❌  
- $$3 + 4 = 7$$ ✅

¡Encontramos! $$m = 3, n = 4$$

**Resultado**: $$x^2 + 7x + 12 = (x + 3)(x + 4)$$

#### Verificación:
$$(x + 3)(x + 4) = x^2 + 4x + 3x + 12 = x^2 + 7x + 12$$ ✅

### Ejemplo 1B: Caso con signo negativo

Factorizar: $$x^2 - 7x - 18$$

#### Paso 1: Identificar qué buscamos
- Producto: $$m \times n = -18$$ (negativo)
- Suma: $$m + n = -7$$ (negativo)

Como el producto es negativo, **uno de los números debe ser positivo y el otro negativo**.

#### Paso 2: Listar factores de -18
$$-18 = (-1) \times 18, \quad (-2) \times 9, \quad (-3) \times 6, \quad (-6) \times 3, \quad (-9) \times 2, \quad (-18) \times 1$$

#### Paso 3: Probar las sumas
- $$(-1) + 18 = 17$$ ❌
- $$(-2) + 9 = 7$$ ❌ (signo incorrecto)
- $$(-3) + 6 = 3$$ ❌
- $$(-6) + 3 = -3$$ ❌
- $$(-9) + 2 = -7$$ ✅

¡Encontramos! $$m = -9, n = 2$$

**Resultado**: $$x^2 - 7x - 18 = (x - 9)(x + 2)$$

#### Verificación:
$$(x - 9)(x + 2) = x^2 + 2x - 9x - 18 = x^2 - 7x - 18$$ ✅

## Caso 2: Trinomios con coeficiente principal ($$ax^2 + bx + c$$)

Cuando el coeficiente de $$x^2$$ no es 1, el proceso es un poco más complejo pero sigue el mismo principio.

### La estrategia del producto $$ac$$

Para $$ax^2 + bx + c$$:
1. Calcula $$ac$$ (producto del primer y último coeficiente)
2. Busca dos números $$m$$ y $$n$$ tales que:

$$m \times n = ac$$

$$m + n = b$$

3. Reescribe el término medio y factoriza por agrupación

### Ejemplo 2A: Caso básico

Factorizar: $$2x^2 + 7x + 3$$

#### Paso 1: Calcular $$ac$$
$$a = 2, c = 3 \Rightarrow ac = 2 \times 3 = 6$$

#### Paso 2: Buscar factores de 6 que sumen 7
$$6 = 1 \times 6, \quad 2 \times 3$$
- $$1 + 6 = 7$$ ✅
- $$2 + 3 = 5$$ ❌

¡Encontramos! $$m = 1, n = 6$$

#### Paso 3: Reescribir y agrupar
$$\begin{aligned}
2x^2 + 7x + 3 &= 2x^2 + 1x + 6x + 3 \\
&= (2x^2 + 1x) + (6x + 3) \\
&= x(2x + 1) + 3(2x + 1) \\
&= (2x + 1)(x + 3)
\end{aligned}$$

**Resultado**: $$2x^2 + 7x + 3 = (2x + 1)(x + 3)$$

#### Verificación:
$$(2x + 1)(x + 3) = 2x^2 + 6x + x + 3 = 2x^2 + 7x + 3$$ ✅

### Ejemplo 2B: Caso con signos negativos

Factorizar: $$6x^2 - 7x - 3$$

#### Paso 1: Calcular $$ac$$
$$a = 6, c = -3 \Rightarrow ac = 6 \times (-3) = -18$$

#### Paso 2: Buscar factores de -18 que sumen -7
$$-18 = (-1) \times 18, \quad (-2) \times 9, \quad (-3) \times 6, \quad (-6) \times 3, \quad (-9) \times 2$$

Probando sumas:
$$(-9) + 2 = -7$$ ✅

¡Encontramos! $$m = -9, n = 2$$

#### Paso 3: Reescribir y agrupar
$$\begin{aligned}
6x^2 - 7x - 3 &= 6x^2 - 9x + 2x - 3 \\
&= (6x^2 - 9x) + (2x - 3) \\
&= 3x(2x - 3) + 1(2x - 3) \\
&= (2x - 3)(3x + 1)
\end{aligned}$$

**Resultado**: $$6x^2 - 7x - 3 = (2x - 3)(3x + 1)$$

#### Verificación:
$$(2x - 3)(3x + 1) = 6x^2 + 2x - 9x - 3 = 6x^2 - 7x - 3$$ ✅

## Estrategias para desarrollar tu habilidad

### 1. Memoriza factores comunes

Practica hasta reconocer automáticamente:
- **Factores de 6**: 1×6, 2×3
- **Factores de 8**: 1×8, 2×4
- **Factores de 12**: 1×12, 2×6, 3×4
- **Factores de 15**: 1×15, 3×5
- **Factores de 18**: 1×18, 2×9, 3×6

### 2. Presta atención a los signos

🟢 **Si $$c > 0$$**: Los dos factores tienen el mismo signo que $$b$$
- $$x^2 + 5x + 6 = (x + 2)(x + 3)$$ (ambos positivos)
- $$x^2 - 5x + 6 = (x - 2)(x - 3)$$ (ambos negativos)

🔴 **Si $$c < 0$$**: Los factores tienen signos opuestos
- $$x^2 + x - 6 = (x + 3)(x - 2)$$ (uno positivo, uno negativo)

### 3. Usa el "método de prueba rápida"

Antes de hacer toda la factorización por agrupación, prueba combinaciones directas:

Para $$2x^2 + 7x + 3$$, intenta:
- $$(2x + 1)(x + 3)$$ ?
- $$(2x + 3)(x + 1)$$ ?

Expande mentalmente solo el término medio: $$6x + x = 7x$$ ✅

## Errores comunes a evitar

### 1. Olvidar verificar la respuesta
**Error**: Dejar $$(x + 2)(x + 4) = x^2 + 7x + 12$$ sin comprobar

**Correcto**: Siempre expandir para verificar: $$(x + 2)(x + 4) = x^2 + 4x + 2x + 8 = x^2 + 6x + 8$$ ❌

La respuesta correcta sería $$(x + 3)(x + 4)$$

### 2. Confundirse con los signos
**Error**: Para $$x^2 - 5x + 6$$, usar $$(x + 2)(x + 3)$$

**Correcto**: Si $$c > 0$$ y $$b < 0$$, ambos factores son negativos: $$(x - 2)(x - 3)$$

### 3. No intentar todas las combinaciones
**Error**: Rendirse después de la primera combinación que no funciona

**Correcto**: Lista sistemáticamente todos los factores y prueba cada combinación

### 4. Usar inspección cuando no es apropiada
**Error**: Intentar inspección en $$7x^2 + 23x + 6$$ (números grandes)

**Correcto**: Para coeficientes grandes, usar otros métodos como la fórmula cuadrática

## Ejercicios de práctica

**Nivel Básico ($$x^2 + bx + c$$):**
1. $$x^2 + 8x + 15$$
2. $$x^2 - 6x + 8$$  
3. $$x^2 + 2x - 15$$
4. $$x^2 - x - 12$$

**Nivel Intermedio ($$ax^2 + bx + c$$):**
5. $$2x^2 + 9x + 4$$
6. $$3x^2 - 7x + 2$$
7. $$2x^2 - x - 3$$
8. $$3x^2 + 2x - 8$$

**Nivel Avanzado:**
9. $$6x^2 + 19x + 10$$
10. $$4x^2 - 12x + 9$$

## Resumen y conclusión

La factorización por inspección es una habilidad fundamental que:

✓ **Es el método más rápido** cuando los números son pequeños
✓ **Se desarrolla con práctica** sistemática y memorizar factores comunes
✓ **Funciona mejor** con coeficientes enteros pequeños
✓ **Requiere verificación** siempre para evitar errores

**Cómo mejorar tu habilidad:**
1. **Memoriza factores** de números del 1 al 20
2. **Practica reconocimiento de signos** sistemáticamente  
3. **Desarrolla intuición** con ejercicios graduales
4. **Verifica todas las respuestas** expandiendo

**Cuándo NO usar inspección:**
- Coeficientes muy grandes
- Factores no enteros
- Casos donde otros métodos son más directos

Con práctica constante, la inspección se vuelve una herramienta poderosa que te permitirá factorizar rápidamente la mayoría de trinomios que encuentres en álgebra.

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