---
layout: post
title: "Factorización por Factor Común (segunda parte): El Arte de Extraer Patrones Ocultos"
description: "Aprende factorización por factor común a nivel avanzado con teoremas, estrategias, ejemplos resueltos paso a paso, agrupación y ejercicios progresivos."
date: 2026-03-30T18:00:00-06:00
author: axellpaz
image: '/images/140.png'
tags: [matemáticas,álgebra,secundaria,universidad]
commissions: [cofoma]
featured: true
toc: true
---

# Factorización por Factor Común (Nivel Avanzado)

> **Meta de aprendizaje:** comprender y aplicar la factorización por factor común como técnica base para simplificar expresiones, resolver ecuaciones y preparar el camino para otros métodos de factorización.

---

## 1. ¿Qué significa “factorizar”?

Factorizar es reescribir una expresión algebraica como un **producto**.

Por ejemplo, la expresión:

$$
6x + 12
$$

puede reescribirse como:

$$
6(x+2)
$$

Esto es útil porque:
- simplifica cálculos,
- permite cancelar factores en fracciones,
- facilita resolver ecuaciones,
- revela estructuras ocultas.

---

## 2. Definición formal de factor común

### Definición (Factor común)

Sea una suma algebraica:

$$
A_1 + A_2 + \cdots + A_n
$$

Diremos que existe un **factor común** $F$ si cada término $A_i$ puede escribirse como:

$$
A_i = F \cdot B_i
$$

Entonces la expresión completa se puede escribir como:

$$
A_1 + A_2 + \cdots + A_n = F(B_1 + B_2 + \cdots + B_n)
$$

---

## 3. Teorema clave: propiedad distributiva inversa

### Teorema (Distribución)

La propiedad distributiva establece que:

$$
a(b+c)=ab+ac
$$

La factorización por factor común es aplicar esta propiedad en sentido inverso:

$$
ab+ac=a(b+c)
$$

---

## 4. Estrategia avanzada para encontrar el factor común

Cuando factorizamos, buscamos:

- **MCD numérico** (máximo común divisor de los coeficientes).
- **variables comunes**.
- **menor exponente común**.
- **signo negativo común** (si ayuda a ordenar el resultado).
- **factor común polinómico** (binomios o expresiones repetidas).
- **agrupación** (cuando el factor común no aparece en todos los términos).

---

## 5. Factor común numérico (con criterio matemático)

### Ejemplo 1

Factoriza:

$$
18x + 24
$$

**Paso 1.** Hallar el MCD de 18 y 24.

Descomposición prima:

$$
18 = 2 \cdot 3^2
$$

$$
24 = 2^3 \cdot 3
$$

Por tanto:

$$
\text{MCD}(18,24)=2\cdot 3=6
$$

**Paso 2.** Extraer el factor común:

$$
18x + 24 = 6(3x+4)
$$

**Resultado final:**

$$
18x + 24 = 6(3x+4)
$$

---

## 6. Factor común con variables y exponentes

### Regla fundamental

Si aparece una variable en varios términos, el exponente común es el **menor exponente compartido**.

Ejemplo:

$$
x^5 \text{ y } x^2 \Rightarrow \text{factor común } x^2
$$

---

### Ejemplo 2

Factoriza:

$$
12x^4y^3 + 18x^2y^5
$$

**Paso 1.** Factor común numérico:

$$
\text{MCD}(12,18)=6
$$

**Paso 2.** Factor común de $x$:

$$
x^4 \text{ y } x^2 \Rightarrow x^2
$$

**Paso 3.** Factor común de $y$:

$$
y^3 \text{ y } y^5 \Rightarrow y^3
$$

**Paso 4.** Factor común total:

$$
6x^2y^3
$$

**Paso 5.** Dividir cada término:

$$
\frac{12x^4y^3}{6x^2y^3}=2x^2
$$

$$
\frac{18x^2y^5}{6x^2y^3}=3y^2
$$

**Resultado final:**

$$
12x^4y^3 + 18x^2y^5 = 6x^2y^3(2x^2+3y^2)
$$

---

## 7. Factor común con signo negativo (técnica elegante)

A veces conviene extraer un signo negativo para que el polinomio dentro del paréntesis quede más ordenado.

### Ejemplo 3

Factoriza:

$$
-5x^3 + 10x^2 - 15x
$$

**Paso 1.** Factor común numérico:

$$
\text{MCD}(5,10,15)=5
$$

**Paso 2.** Factor común literal:

$$
x^3, x^2, x \Rightarrow x
$$

**Paso 3.** Extraer el factor común con signo negativo:

$$
-5x(x^2-2x+3)
$$

**Resultado final:**

$$
-5x^3 + 10x^2 - 15x = -5x(x^2-2x+3)
$$

---

## 8. Factor común fraccionario (nivel avanzado)

### Ejemplo 4

Factoriza:

$$
\frac{3}{4}x^2 + \frac{9}{8}x
$$

**Paso 1.** Factor común numérico.

Observamos que:

$$
\frac{3}{8}
$$

es un factor común adecuado.

**Paso 2.** También hay factor común literal $x$.

Entonces el factor común total es:

$$
\frac{3}{8}x
$$

**Paso 3.** Dividir cada término:

$$
\frac{\frac{3}{4}x^2}{\frac{3}{8}x}=2x
$$

$$
\frac{\frac{9}{8}x}{\frac{3}{8}x}=3
$$

**Resultado final:**

$$
\frac{3}{4}x^2 + \frac{9}{8}x = \frac{3}{8}x(2x+3)
$$

---

## 9. Factor común polinómico (factor común “oculto”)

Aquí el factor común no es un número ni una letra, sino un **polinomio completo**.

### Ejemplo 5

Factoriza:

$$
(x+2)(x-5) + 3(x+2)
$$

**Paso 1.** Identificar el factor repetido.

El factor común es:

$$
(x+2)
$$

**Paso 2.** Extraer el factor común:

$$
(x+2)\big((x-5)+3\big)
$$

**Paso 3.** Simplificar el paréntesis:

$$
(x-5)+3=x-2
$$

**Resultado final:**

$$
(x+2)(x-5) + 3(x+2) = (x+2)(x-2)
$$

---

## 10. Factorización por agrupación

Cuando no hay un factor común evidente en todos los términos, agrupamos.

### Ejemplo 6

Factoriza:

$$
ax + ay + bx + by
$$

**Paso 1.** Agrupar términos:

$$
(ax+ay) + (bx+by)
$$

**Paso 2.** Sacar factor común en cada grupo:

$$
a(x+y) + b(x+y)
$$

**Paso 3.** Extraer el factor común global:

$$
(x+y)(a+b)
$$

**Resultado final:**

$$
ax + ay + bx + by = (x+y)(a+b)
$$

---

## 11. Factor común mixto (agrupación avanzada)

### Ejemplo 7

Factoriza completamente:

$$
6x^2 - 9xy + 4x - 6y
$$

**Paso 1.** Agrupar:

$$
(6x^2 - 9xy) + (4x - 6y)
$$

**Paso 2.** Sacar factor común en cada grupo:

$$
6x^2 - 9xy = 3x(2x-3y)
$$

$$
4x - 6y = 2(2x-3y)
$$

**Paso 3.** Extraer el factor común polinómico:

$$
3x(2x-3y) + 2(2x-3y) = (2x-3y)(3x+2)
$$

**Resultado final:**

$$
6x^2 - 9xy + 4x - 6y = (2x-3y)(3x+2)
$$

---

## 12. Factor común en fracciones algebraicas (simplificación)

### Ejemplo 8

Simplifica:

$$
\frac{12x^2y - 18xy^2}{6xy}
$$

**Paso 1.** Factorizar el numerador:

$$
12x^2y - 18xy^2 = 6xy(2x-3y)
$$

**Paso 2.** Sustituir:

$$
\frac{6xy(2x-3y)}{6xy}
$$

**Paso 3.** Cancelar el factor común:

$$
2x-3y
$$

**Conclusión:**

$$
\frac{12x^2y - 18xy^2}{6xy} = 2x-3y
$$

> Restricción: $x \ne 0$ y $y \ne 0$.

---

## 13. Factor común como paso previo a resolver ecuaciones

### Teorema (Producto nulo)

Si:

$$
A \cdot B = 0
$$

Entonces:

$$
A = 0 \quad \text{o} \quad B = 0
$$

---

### Ejemplo 9

Resuelve:

$$
5x^3 - 10x^2 = 0
$$

**Paso 1.** Extraer factor común:

$$
5x^3 - 10x^2 = 5x^2(x-2)
$$

Por tanto, la ecuación queda:

$$
5x^2(x-2)=0
$$

**Paso 2.** Aplicar producto nulo.

Si:

$$
5x^2 = 0
$$

entonces:

$$
x^2 = 0
$$

y por tanto:

$$
x = 0
$$

Si:

$$
x-2 = 0
$$

entonces:

$$
x = 2
$$

**Solución final:**

$$
x = 0 \quad \text{o} \quad x = 2
$$

---

# 14. Errores comunes (y cómo evitarlos)

### ❌ Error 1: sacar un factor que no divide a todos los términos

Ejemplo poco conveniente:

$$
6x + 9 = 6(x+1.5)
$$

Esto es correcto, pero no es elegante. Mejor:

$$
6x + 9 = 3(2x+3)
$$

---

### ❌ Error 2: olvidar dividir correctamente

Ejemplo correcto:

$$
12x + 8 = 4(3x+2)
$$

Ejemplo incorrecto:

$$
12x + 8 = 4(12x+8)
$$

---

### ❌ Error 3: no factorizar completamente

Ejemplo incompleto:

$$
2x^2 - 8 = 2(x^2-4)
$$

Factorización completa:

$$
2(x^2-4)=2(x-2)(x+2)
$$

---

# 15. Ejercicios de práctica (progresivos)

> **Instrucción:** Factoriza completamente.  
> Cada ejercicio aumenta el nivel de dificultad.

1. $$8x + 12$$

2. $$15a^2 + 25a$$

3. $$18m^3n^2 - 12m^2n$$

4. $$7x^2y - 14xy^2 + 21xy$$

5. $$\frac{3}{5}x^2 + \frac{9}{10}x$$

6. $$(x+3)(x-2) - 5(x+3)$$

7. $$4x^3 - 12x^2 + 9x - 27$$

8. $$6a^2b - 9ab^2 + 12a - 18b$$

9. $$10x^4y^3 - 15x^3y^5 + 25x^2y^3$$

10. $$3(x-2)^3 - 6(x-2)^2 + 9(x-2)$$

---

# Cierre

La factorización por factor común no es una técnica básica: es una **habilidad estructural**.

Cuando la dominas, puedes:

- simplificar expresiones complejas,
- resolver ecuaciones polinómicas,
- trabajar con fracciones algebraicas,
- detectar patrones escondidos.

> **Regla final:** si una expresión parece difícil, casi siempre conviene preguntar primero:  
> **¿hay algo común escondido aquí?**

---

## Practica aquí
En el siguiente cuadro podrás generar un ejercicio de diversos niveles ¡ponte a prueba!

<iframe src="../factor_comun_widget.html" width="100%" height="550" style="border:none; border-radius:12px;"></iframe>
---
