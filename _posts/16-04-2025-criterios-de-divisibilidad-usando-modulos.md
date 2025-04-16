---
layout: post
title: Reglas de divisibilidad usando módulos
description: Se presenta un breve video de explicación de cómo obtener la constancia de estudiante matriculado en la UNED
date: 2025-04-16T15:00:00-00:00
author: axell
image: '/images/136.jpg'
tags: [noticias]
commissions: [cocodi, cofoma]
featured: true
comments: true
share: true
---
## Definición

La divisibilidad de un número entero $$n$$ por otro número entero $$d$$ puede expresarse como una congruencia:

$$n \equiv 0 \pmod{d} $$

Esto significa que $$d|n$$, es decir entonces que $$n$$ es divisible por $$d$$

## Criterios de divisibilidad usando congruencias del 1 al 19

### Divisibilidad por 1: Todo número es divisible por 1.
  
$$n \equiv 0 \pmod{1}$$
Este es una proposición que será siempre verdadera.

### Divisibilidad por 2: Un número es divisible por 2 si su última cifra es par.
$$n \equiv 0 \pmod{2}$$

### Divisibilidad por 3: Si la suma de sus cifras es divisible por 3.
$$n \equiv a_1 + a_2 + \dots + a_k \equiv 0 \pmod{3}$$

### Divisibilidad por 4: Si sus dos últimas cifras forman un número divisible por 4.
$$ n \equiv 0 \pmod{4} \Leftrightarrow 100 \equiv 0 \pmod{4}$$

### Divisibilidad por 5: Si termina en 0 o 5.
$$ n \equiv 0 \text{ ó } 5 \pmod{10}$$

### Divisibilidad por 6: Si es divisible por 2 y por 3.
$$n \equiv 0 \pmod{6} \Leftrightarrow n \equiv 0 \pmod{2} \land n \equiv 0 \pmod{3}$$

### Divisibilidad por 7: Debemos de quitar la última cifra, multiplicarla por 2 y restarla del número que queda. Si el resultado es divisible por 7, el número original también lo es. 
$$n \equiv 0 \pmod{7} \Leftrightarrow 10a + b \Rightarrow a - 2b \equiv 0 \pmod{7}$$

### Divisibilidad por 8: Si sus tres últimas cifras forman un número divisible por 8.
$$n \equiv 0 \pmod{8}$$

### Divisibilidad por 9: Si la suma de sus cifras es divisible por 9.
$$n \equiv \sum_{i=0}^{k} a_i \pmod{9}$$

### Divisibilidad por 10: Si termina en 0.
$$n \equiv 0 \pmod{10}$$

### Divisibilidad por 11: Si la suma alternada de sus cifras es divisible por 11.
$$ n = a_0 - a_1 + a_2 - a_3 + \dots \equiv 0 \pmod{11}$$

### Divisibilidad por 12: Si es divisible por 3 y por 4.
$$n \equiv 0 \pmod{12} \Leftrightarrow n \equiv 0 \pmod{3} \land n \equiv 0 \pmod{4}$$

### Divisibilidad por 13: Multiplica la última cifra por 9 y réstala del número restante.
$$n = 10a + b \Rightarrow a - 9b \equiv 0 \pmod{13}$$

### Divisibilidad por 14: Si es divisible por 2 y por 7.
$$ n \equiv 0 \pmod{14} \Leftrightarrow n \equiv 0 \pmod{2} \land n \equiv 0 \pmod{7}$$

### Divisibilidad por 15: Si es divisible por 3 y por 5.
$$n \equiv 0 \pmod{15} \Leftrightarrow n \equiv 0 \pmod{3} \land n \equiv 0 \pmod{5}$$

### Divisibilidad por 16: Si las últimas 4 cifras forman un número divisible por 16.
$$n \mod 10000 \equiv 0 \pmod{16}$$

### Divisibilidad por 17: Multiplica la última cifra por 5, réstala del resto.
$$n = 10a + b \Rightarrow a - 5b \equiv 0 \pmod{17}$$

### Divisibilidad por 18: Si es divisible por 2 y por 9.
$$ n \equiv 0 \pmod{18} \Leftrightarrow n \equiv 0 \pmod{2} \land n \equiv 0 \pmod{9}$$

### Divisibilidad por 19: Multiplica la última cifra por 2 y súmala al resto.
$$n = 10a + b \Rightarrow a + 2b \equiv 0 \pmod{19}$$
  

