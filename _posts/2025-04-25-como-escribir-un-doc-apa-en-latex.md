---
layout: post
title: Cómo Escribir un Documento APA en LaTeX
description: Guía sobre como escribir documentos en formato APA 7 usando LaTeX.
date: 2025-04-25T16:00:00-06:00
author: edalorzo
image: '/images/61.png'
tags: [apa,latex]
commissions: [cofoma]
featured: true
comments: false
share: false
toc: true
---

Como parte de las herramientas para facilitar su vida académica, te traemos esta guía sobre cómo utilizar LaTeX para formatear tus trabajos según las normas APA 7. Si bien la idea es complementar un taller que tendremos próximamente, este post les servirá como referencia rápida cuando necesiten escribir sus documentos.

LaTeX es una herramienta poderosa para la escritura académica, especialmente cuando se trata de formatear documentos complejos y manejar referencias. Afortunadamente, existe una clase específica que nos facilita aplicar el formato APA 7.

## Clase de Documento APA 7

Cuando se crea un documento en LaTeX, lo primero que se especifica es la clase de documento que se desea utilizar: un artículo, un reporte, un libro, son clases comunes de los documentos LaTeX.

Cuando se trata de un documento en formato APA existe una clase de documento especial que podemos usar para ese propósito:


```tex
\documentclass{apa7}
```

[Regresar al índice](#toc)

## Información de Portada

Claramente, no basta solo con definir la clase de documento, sino que además hace falta especificar algunos detalles de la portada, como el título del documento, su autor, la afiliación del autor (es decir, su institución educativa), el nombre del curso, el nombre del profesor encargado y la fecha de entrega. Para este propósito deberemos incluir también los siguientes comandos, respectivamente:

```tex
\title{Orígenes de las Geometrías No Euclidiana}
\authorsnames{Euclides Matamoros}
\authorsaffiliations{Universidad Estatal a Distancia}
\course{Fundamentos Filosóficos de la Educación Matemática (03425)}
\professor{Profesor Pitágoras Azofeifa}
\duedate{\spanishdate{2025}{5}{23}}
```

Donde:


* `title`: título del documento.
* `author`: autor del documento.
* `authorsaffiliations`: institución a la que pertenece el autor del documento.
* `course`: nombre del curso.
* `professor`: nombre del profesor.
* `duedate`: fecha de entrega.


El comando `\spanishdate{año}{mes}{día}` nos permite ingresar una fecha especificando su año, mes y día y esta se reflejará en idioma español en el documento.

[Regresar al índice](#toc)

## Configuración de la Página

Es común que se deseen configurar algunas opciones de formato adicionales para el documento que incluyen cosas como el tamaño de la fuente, el tamaño del papel, el idioma y el tipo de documento APA. Todos estos detalles usualmente se especifican como *opciones* de la clase, que son parámetros, separados por comas, que se le pasan a la clase usando corchetes cuadrados:

```tex
\documentclass[⟨opción-1,opción-2,...,opción-n⟩]{apa7}
```

El siguiente ejemplo define un documento APA tipo reporte estudiantil (`stu`), usando una fuente de `12` puntos, en papel tamaño A4 (`a4paper`), usando la librería de control de referencias llamada `biblatex`.


```tex
\documentclass[stu, 12pt, a4paper, biblatex]{apa7}
```

[Regresar al índice](#toc)

## Configurar Idioma Español

Es recomendable incluir un par de paquetes adicionales al inicio del documento LaTeX para asegurarnos un soporte total para el idioma español.

```tex
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[spanish,es-tabla]{babel}
```


El paquete `inputenc` le dice a LaTeX cómo leer tu archivo de código, mientras que `fontenc` le dice cómo mostrar los caracteres correctamente utilizando las fuentes seleccionadas. Ambas son importantes y complementarias para escribir correctamente en español, especialmente para que LaTeX pueda entender los caracteres especiales del idioma español, como por ejemplo las vocales acentuadas (á, é, í, ó, ú, ü) y la letra ñ. 

Dependiendo del compilador que estemos usando, puede que importar `inputenc` no sea necesario. Por ejemplo, el compilador de XeLaTex no lo necesitas. Entonces, siempre es bueno prestar atención a los mensajes del compilador y determinar si este paquete hace falta o no.

Por otro lado, el paquete `babel` es un sistema de internacionalización para LaTeX. Al especificar la opción `spanish`, le indicas a LaTeX que el idioma principal de tu documento es el español. Esto activa una serie de configuraciones específicas para el idioma, que incluye, entre otras cosas, traducciones y soporte para la división silábica. La opción adicional `es-tabla` instruye al traductor a usar la palabra "Tabla" en vez de la palabra "Cuadro" en las traducciones de tus tablas, de conformidad con las especificaciones de APA 7.

[Regresar al índice](#toc)

## Otros Metadatos

Para documentos científicos más formales, el paquete también soporta opciones para definir las palabras claves, un resumen del documento y algunos otros detalles:

```tex
\keywords{geometría,matemática,hiperbólica,esférica}
\abstract{Un breve recorrido historico sobre el descubrimeinto de las goemetrías no euclidianas}
```

Algunos de los otros elementos adicionales que se pueden definir son:


* `\keywords{lista-de-palabras-clave}`: lista separada por comas de palabras clave del documento.
* `\abstract{resumen}`: resumen del contenido del documento.
* `\shorttitle{título-corto}`: título abreviado del documento para los encabezados de página.
* `\leftheader{apellidos-autor}`: Apellidos del autor para mostrar en los encabezados de páginas pares en modo revista (`jou`).
* `\journal{nombre-revista}`: nombre de la revista en donde se publica el artículo.
* `\volume{volumen-revista}`: volumen, número, páginas en donde se publica el artículo dentro de la revista.
* `\ccopy{derechos-de-autor}`: aviso de derechos de autor.

[Regresar al índice](#toc)

## Mi Primer Documento LaTeX con APA 7

Un documento base, con portada y listo para empezar a redactar podría lucir de la siguiente manera:

```tex
\documentclass[stu, 12pt, a4paper, biblatex]{apa7}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[spanish,es-tabla]{babel}

\title{Orígenes de las Geometrías No Euclidiana}
\authorsnames{Euclides Matamoros}
\authorsaffiliations{Universidad Estatal a Distancia}
\course{Fundamentos Filosóficos de la Educación Matemática (03425)}
\professor{Profesor Pitágoras Azofeifa}
\duedate{\spanishdate{2025}{5}{23}}
\keywords{geometría,matemática,hiperbólica,esférica}
\abstract{Un breve recorrido historico sobre el descubrimeinto de las goemetrías no euclidianas}

\begin{document}

\maketitle

\section{Introducción}

Aquí comienza mi redacción.

\end{document}
```

[Regresar al índice](#toc)

## Estilos de Documento

La clase de documento `apa7` soporta varios estilos de documento. 

### Modo Estudiante

Formatea el documento en estricto cumplimiento (si no en su totalidad) con los requisitos para trabajos estudiantiles (por ejemplo, página de título, doble espacio, etc.).

Agrega la opción `stu` como se muestra a continuación:

```tex
\documentclass[stu, 12pt, a4paper, biblatex]{apa7}    
```

### Modo Revista

Formatea el documento con una apariencia similar a la de una revista APA impresa (por ejemplo, el *Journal of Educational Psychology*). El texto se compone en formato de dos caras y dos columnas.

Agrega la opción `jou` como se muestra a continuación:

```tex
\documentclass[jou, 12pt, a4paper, biblatex]{apa7}    
```

### Modo Documento

Formatea el documento como un documento LaTeX típico (una cara, una sola columna, etc.).

Agrega la opción `doc` como se muestra a continuación:

```tex
\documentclass[doc, 12pt, a4paper, biblatex]{apa7}    
```

### Modo Manuscrito

Formatea el documento en estricto cumplimiento (si no en su totalidad) de los requisitos para su envío a una revista APA (por ejemplo, página de título, doble espacio, etc.).

Agrega la opción `man` como se muestra a continuación:

```tex
\documentclass[man, 12pt, a4paper, biblatex]{apa7}    
```

### Modo Máquina de Escribir

Si utilizas el modo manuscrito (`man`) o el modo estudiante (`stu`), también es posible agregar una opción adicional para formatear el documento como si hubiera sido escrito a máquina de escribir.

Agrega la opción `tt` como se muestra a continuación:

```tex
\documentclass[man, 12pt, a4paper, tt, biblatex]{apa7}    
```

[Regresar al índice](#toc)

## Tamaño del Papel

La especificación actual de la clase de documento `apa7` soporta dos tamaños de papel: 


* Tamaño A4 (`a4paper`):
	+ Es el tamaño de papel estándar internacional, definido por la norma ISO 216.
	+ Sus dimensiones son 210 mm de ancho por 297 mm de largo.
	+ Se utiliza en la gran mayoría de los países del mundo, incluyendo Europa, Asia, y la mayor parte de América Latina.
* Tamaño carta (`leterpaper`):
	+ Es un tamaño de papel estándar en América del Norte (principalmente Estados Unidos y Canadá).
	+ Sus dimensiones son 215.9 mm de ancho por 279.4 mm de largo.

### Tamaño A4

Simplemente, incluye la opción `a4paper` en tu declaración de la clase de documento.

```tex
\documentclass[stu, 12pt, a4paper, biblatex]{apa7}
```

### Tamaño Carta

Simplemente, incluye la opción `letterpaper` en tu declaración de la clase de documento.

```tex
\documentclass[stu, 12pt, letterpaper, biblatex]{apa7}
```

[Regresar al índice](#toc)

## Encabezados

Al utilizar una clase de documento `apa7`, los encabezados se formatean automáticamente según las directrices de APA. 

| Nivel | Formato                                                    |
| ----- | ---------------------------------------------------------- |
| 1     | Encabezado centrado en negritas, mayúsculas iniciales.     |
| 2     | Encabezado al ras del margen izquierdo, en negritas, mayúsculas iniciales. |
| 3     | Encabezado al ras del margen izquierdo, en negritas y cursiva, mayúsculas iniciales. |
| 4     | Encabezado con sangría, en negritas, mayúsculas iniciales, terminando con un punto.  |
| 5     | Encabezado con sangría, en negritas y cursiva, mayúsculas iniciales, terminando con un punto.|


A continuación, se muestra cómo crear los diferentes niveles de encabezados que comúnmente se utilizan.

### Encabezado de Nivel 1

Este es el encabezado principal de una sección importante de tu documento. Se crea utilizando el comando `\section{Título del Encabezado}``.

```tex
\section{Introducción}
    La presente investigación...
```

[Regresar al índice](#toc)

### Encabezado Nivel 2

Este encabezado se utiliza para los subtemas dentro de una sección principal. Se crea con el comando `\subsection{Título del subtema}``.

```tex
\section{Geometrías No Eclidianas}

    \subsection{Geometría Hiperbólica}
    La geometría hiperbólica es...
    
    \subsection{Geometría Esférica}
    La geometría esférica es...
    
    \subsection{Geometría de Riemann}
    La geometría de Riemann es...
```

[Regresar al índice](#toc)

### Encabezado Nivel 3

Este nivel de encabezado se emplea para subsecciones dentro de un subtema. Se crea con el comando `\subsubsection{Sub-subsección Específica}``.

```tex
\section{Geometrías No Eclidianas}
    
	\subsection{Geometría Hiperbólica}

		\subsubsection{Historia}
		La geometría hiperbólica fue descubierta por....

	    \subsubsection{Aplicaciones}
	    La geometría hiperbólica se utiliza principalmente para...
    
```

[Regresar al índice](#toc)

### Encabezado Nivel 4

Este encabezado se utiliza para dividir aún más las subsecciones. Se crea con el comando `\paragraph{Título párrafo.}`. La clase APA le agregará un punto al final al título, automáticaente, según los requerimientos de APA 7.

```tex
\section{Geometrías No Eclidianas}
    
	\subsection{Geometría Hiperbólica}

		\subsubsection{Historia}

			\paragraph{Antigua Grecia.}
			Los aportes de Euclides y su quinto postulado...

			\paragraph{Edad Media.}
			Muchos trataron de demostrar el quinto postulado como un teorema...

			\paragraph{Siglo XVIII.}
			Figuras como János Bolyai y Nikolai Lobachesky...
```

[Regresar al índice](#toc)

### Encabezado Nivel 5

Este es el nivel de encabezado más bajo que generalmente se utiliza en documentos APA. Se crea con el comando `\subparagraph{Título subpárrafo}`. La clase APA le agregará un punto al final al título, automáticaente, según los requerimientos de APA 7.

```tex
\section{Geometrías No Eclidianas}
    
	\subsection{Geometría Hiperbólica}

	    \subsubsection{Historia}
	        
	        \paragraph{Postulados de Euclides.}
	        Los aportes de Euclides y su quinto postulado...

	            \subparagraph{El quinto postulado.}
	            Muchos intentaron demostrar que era un teorema...
```

[Regresar al índice](#toc)

## Enumeraciones y Viñetas

Los documentos de la clase `apa7` ofrecen algunos comandos especiales para crear enumeraciones y viñetas.

### Serie

Una primera alternativa es la creación de una *enumeración serial* dentro de un mismo párrafo:


```tex
Entre los matemáticos que estudiaron a fondo el quinto postulado están
\begin{seriate}
    \item Gauss,
    \item Lobachesky y 
    \item Bolyai.
\end{seriate}
```


Que produce una salida como la siguiente:

```text
Entre los matemáticos que estudiaron a fondo el quinto postulado están 
a) Gauss, b) Lobachesky y c) Bolyai.
```

[Regresar al índice](#toc)

### Enumeración

Luego, está la *enumeración con números arábigos*:


```tex
Entre los matemáticos que estudiaron a fondo el quinto postulado están:
\begin{APAenumerate}
    \item Gauss
    \item Lobachesky
    \item Bolyai
\end{APAenumerate}
```

Que produce una salida como la siguiente:

```text
Entre los matemáticos que estudiaron a fondo el quinto postulado están:

1. Gauss
2. Lobachesky
3. Bolyai
```

[Regresar al índice](#toc)

### Viñetas

Finalmente, tenemos la *enumeración con viñetas*:

```tex
Entre los matemáticos que estudiaron a fondo el quinto postulado están:
\begin{APAitemize}
    \item Gauss
    \item Lobachesky
    \item Bolyai
\end{APAitemize}
```

Que produce una salida como la siguiente:

```text
Entre los matemáticos que estudiaron a fondo el quinto postulado están:

o Gauss
o Lobachesky
o Bolyai
```

[Regresar al índice](#toc)

## Tablas

Aunque LaTeX ya tiene soporte para tablas, la clase de documento `apa7` también incorpora de forma predeterminada el paquete `booktabs`, que mejora la calidad de las tablas, proporcionando comandos adicionales y optimización tras bambalinas. La clase de documento `apa7` además incluye algunos comandos adicionales para definir notas al pie de la tabla.

No es intención de esta sección explicar en detalle como construir tablas en \LaTeX. Para tal propósito consultar [La Introducción No Tan Corta de LaTeX][1] en su sección sobre tablas.

[Regresar al índice](#toc)

### Soporte de booktabs

El paquete `booktabs` ofrece las siguientes opciones:


* `toprule`: barra de la parte superior de la tabla.
* `midrule`: barra para la sección de títulos.
* `cmidrule`: barra que se extiende un número de columnas.
* `bottomrule`: barra de la parte inferior de la tabla.

[Regresar al índice](#toc)

### Soporte de Notas al Pie de Tabla

Además, el documento tipo `apa7` soporta los siguientes comandos:


* `\tablenote{⟨text-nota-tabla⟩}`: Agrega una de nota de tabla cuando se colocan después de `\end{tabular}` o un comando similar dentro de `\begin{table}` y `\end{table}``.
* `\tabfnm{a}`: Coloque una marca de nota al pie en superíndice dentro de una celda de tabla.
* `\tabfnt{a}{⟨texto-de-la-nota⟩}`: Dentro de las notas al pie de la tabla, especifique el texto de la nota al pie para `\tabfnm{a}``.

[Regresar al índice](#toc)

### Ejemplo de Tabla

El siguiente es un ejemplo de una tabla construida usando las opciones del documento tipo `apa7`.

```tex
\section{Resultados}

La tabla \ref{tab:TablaPrincipal} contiene datos de ejemplo.

\begin{table}[htbp]
    \vspace{2em}
    
    \caption{Tabla Principal}
    \label{tab:TablaPrincipal}
    
    \begin{tabular}{@{}lrrr@{}} 
        \toprule
        Tipo de distribución & \multicolumn{2}{l}{Porcentaje de} & Número total   \\
                             & \multicolumn{2}{l}{objetivos con} & de ensayos por \\
                             & \multicolumn{2}{l}{segmentos en}  & participante   \\ 
                             \cmidrule(r){2-3}
                             & Comienzo & Coda & \\ 
                             \midrule
        Categórico -- comienzo\tabfnm{a}  &  100   &   0            &   196 \\
        Probabilístico                    &   80   &  20\tabfnm{*}  &   200 \\
        Categórico -- coda\tabfnm{b}      &    0   & 100\tabfnm{*}  &   196 \\
        \bottomrule
    \end{tabular}
    
    \tablenote{Todos los datos son aproximaciones

    \tabfnt{a}Categórico puede ser de inicio.
    \tabfnt{a}Categórico puede ser coda.

    \tabfnt{*}\textit{p} < 0.05.
    \tabfnt{**}\textit{p} < 0.01.
    }
\end{table}    
```

[Regresar al índice](#toc)

### Ubicación de la Tabla

En el modo estudiante (`stu`) y en el modo manuscrito (`man`) las tablas y figuras se colocan hasta después de la lista de referencias. Si se desea que las tablas y figuras se integren dentro del cuerpo del texto en vez de posponerlas hasta después de la lista de referencias, se debe agregar la opción `floatsintext` en las opciones de la clase `apa7`.

```tex
\documentclass[stu, 12pt, a4paper, floatsintext, biblatex]{apa7}
```

[Regresar al índice](#toc)

### Referenciar una Tabla

Al definir una tabla se le puede colocar una etiqueta que luego se puede utilizar para referenciarla. Por ejemplo, se puede etiquetar de la siguiente manera:

```tex
\caption{Título de tabla}
\label{tab:NombreReferencia}
\begin{tabular}{ll}
    ...
\end{tabular}
```

Donde `\label{tab:NombreTabla}` define una etiqueta llamada `NombreTabla` para la tabla. 

El nombre de la tabla se puede usar luego, en cualquier otro lugar, para referenciar dicha tabla usando el comando `\ref{nombre-referencia}`. 

Por ejemplo:

```tex
\section{Resultados}
    Como se puede ver en la tabla \ref{tab:NombreTabla}, 
    los datos revelan que...
```

[Regresar al índice](#toc)

### Errores de Traducción

Tal parece que el paquete `apa7` tiene un error de traducción de la palabra inglesa "Note", que debería traducirse, por babel, como "Nota" al español. Su traducción fue omitida en la implementación original del paquete, y por esa razón siempre sale en inglés. Mientras los autores del paquete solucionan este problema, una solución sencilla consiste en agregar su traducción de forma manual al inicio del documento, justo antes de `begin{document}`.


```tex
\renewcommand{\notelabel}{Nota}
\begin{document}
```

[Regresar al índice](#toc)

## Figuras

Aunado al soporte para figuras de LaTeX, la clase de documento `apa7` soporta notas al pie de la figura usando el comando `\figurenote{texto-de-la-nota}``.

Si la figura que deseas agregar es un imagen, asegúrate de incluir el paquete `graphicx` primero:

```tex
\usepackage{graphicx}
```

El siguiente ejemplo muestra como agregar una figura basada en una imagen y se agrega una nota al pie de la imagen en el estilo APA 7.

```tex
\begin{figure}
    \caption{Cambio en la actitud laboral en función de día y la hora}
    \label{fig:actitud-laboral}
    \includegraphics[width=0.5\linewidth]{actitud-laboral.png}
    \figurenote{Esta figura demuestra los elementos de una figura prototípica.}
\end{figure}
```

[Regresar al índice](#toc)

### Ubicación de las Figuras

Recuerda que, al igual que con las tablas, en el modo estudiante (`stu`) y el modo manuscrito (`man`) las figuras se colocan, de forma predeterminada, hasta después de la lista de referencias. Si deseas que las figuras aparezcan en el cuerpo del texto en donde se agregan debes incluir la opción `floatsintext` en la declaración de opciones tu clase `apa7`.

Por ejemplo:

```tex
\documentclass[stu, 12pt, a4paper, floatsintext, biblatex]{apa7}
```

[Regresar al índice](#toc)

### Referenciar una Figura

Al definir una figura se le puede colocar una etiqueta que luego se puede utilizar para referenciarla. Por ejemplo, se puede etiquetar de la siguiente manera:

```tex
\begin{figure}
    \caption{Título de la figura}
    \label{fig:NombreFigura}
    ...
\end{figure}
```

Donde `\label{fig:NombreFigura}` define una etiqueta llamada `NombreFigura` para la figura. 

El nombre de la figura se puede usar luego, en cualquier otro lugar, para referenciar dicha figura usando el comando `\ref{nombre-referencia}`. 

Por ejemplo:

```tex
\section{Resultados}
    Como se puede ver en la figura \ref{fig:NombreFigura}, 
    los datos revelan que...
```

[Regresar al índice](#toc)

## Ecuaciones

La especificación de APA 7 contiene algunas restricciones en la presentación de ecuaciones.

Aseguráte de agregar soporte para expresiones matemática a tu documento antes de incluir ecuaciones:

```tex
\usepackage{amsmath,amsthm,amssymb,amsfonts}
```

[Regresar al índice](#toc)

### Ecuaciones en Línea

La especificación de APA 7 recomienda que las ecuaciones cortas y simples se escriban en línea, por ejemplo $$a=[(1+b)/x]^{1/2}$$. Para presentar fracciones en línea se utiliza una diagonal (/). Para que el orden de las operaciones quede claro se utilizan paréntesis: $$\{\;[\;(\;)\;]\;\}$$. El punto es que las ecuaciones en línea no deben proyectarse por encima o por debajo de la línea.

### Ecuaciones Desplegables

Las ecuaciones desplegables se deben expresar en su propia línea, y deben ser numeradas para que puedan ser referenciadas posteriormente. 

#### Ecuación Sencilla

Que puede definir usando el entorno `equation`:

```tex
\begin{equation} \label{eq:LeyCosenos}
    a^2 = b^2 + c^2 - 2bc \cos \alpha
\end{equation}    
```

Que luciría de la siguiente manera:


$$a^2 = b^2 + c^2 - 2bc \cos \alpha \qquad (1)$$

#### Múltiples Ecuaciones Centradas

Que puedes definir usando el entorno `gather`

```tex
\begin{gather} \label{eq:Pitagoras}
    a^2 + b^2 = c^2 \\
    x^2 + y^2 = 1
\end{gather}    
```

Que luciría de la siguiente manera:

$$
\begin{gather}
    a^2 + b^2 = c^2 \qquad (2) \\
    x^2 + y^2 = 1   \qquad (3)
\end{gather}
$$

#### Ecuación Larga

Que puede definir usando el entorno `equation` en combinación con el entorno `split`:

```tex
\begin{equation} \label{eq:LeyCosenoAngulo}
    \begin{split}
        a^2 = b^2 + c^2 - 2bc \cos \alpha \\
        a^2 + 2bc \cos \alpha = b^2 + c^2 \\
        2bc \cos \alpha = b^2 + c^2 - a^2 \\
        \cos \alpha = \frac{b^2 + c^2 - a^2}{2bc}
    \end{split}
\end{equation}    
```

Que luciría de la siguiente manera:

$$
\begin{equation} \label{eq:LeyCosenoAngulo}
    \begin{split}
        a^2 = b^2 + c^2 - 2bc \cos \alpha \\
        a^2 + 2bc \cos \alpha = b^2 + c^2 \\
        2bc \cos \alpha = b^2 + c^2 - a^2 \\
        \cos \alpha = \frac{b^2 + c^2 - a^2}{2bc}
    \end{split} \qquad (4)
\end{equation}
$$

Este documento no pretende ser una guía de como escribir ecuaciones, para más información consulte la guía del paquete `amsmath`.

[Regresar al índice](#toc)

### Referenciar una Ecuación

Dicha ecuación se puede referenciar usando el comando `\eqref{eq:nombre-ecuación}`.

Por ejemplo:

```tex
Al aplicar la ecuación \eqref{eq:LeyCosenos} obtenemos lo siguiente:    
```

Que luciría de la siguiente manera:

```text
Al aplicar la ecuación (1) obtenemos lo siguiente:
```

[Regresar al índice](#toc)

## Saltos de Página y Columna

En el punto en donde deseas crear un salto de página, simplemente incluye el comando:

```tex
\clearpage
```

Si estás trabajando en formato de doble columna, puedes hacer un salto de columna con el comando

```tex
\columnbreak
```

[Regresar al índice](#toc)

## Fuentes

Se pueden configurar el tamaño y los tipos de fuentes usadas en tu documento. No todas las configuraciones son parte del paquete `apa7`, sin embargo, se cubren algunas alternativas pues este tipo de configuraciones pueden resultar fundamentales cuando se esta escribiendo un documento en formato APA.

### Tamaño de Fuente

Para controlar el tamaño de la fuente, lo más sencillo es especificar su tamaño en las opciones de la clase `apa7`, como se explicó previamente:

```tex
\documentclass[stu, 12pt, a4paper, biblatex]{apa7}
```

La implementación actual soporta tres tamaños de fuente: `10pt`,  `11pt` o  `12pt`.

[Regresar al índice](#toc)

### Fuente Latin Modern Roman y Helvética

De manera predeterminada, el paquete `apa7` usa una fuente llamada "Latin Modern Roman" que tiene una tipografía bastante agradable y elegante. Sin embargo, algunos trabajos universitarios requieren el uso de algún tipo de fuente específica, siendo "Arial" la peor de todas las recomendaciones, pues es una fuente tipográficamente poco elegante e informal y que, además, no luce bien en el trabajo final. 

Es posible cambiar la fuente "Latin Modern Roman" a "Helvética" por medio de incluir la opción `helv` en las opciones de la clase `apa7`:

```tex
\documentclass[stu, 12pt, helv, a4paper, biblatex]{apa7}
```

[Regresar al índice](#toc)

### Otras Fuentes Preconfiguradas

En cualquier otro caso, es posible manipular la fuente final del documento por medio de incluir algún otro paquete con la fuente deseada.

Puedes probar incluyendo uno de los siguientes paquetes:

* `lmodern`: Latin Modern Roman
* `bookman`: Bookman
* `tgbonum`: TEX Gyre Bonum
* `palatino`: Palatino
* `utopia`: Utopia

[Regresar al índice](#toc)

### Otras Fuentes Personalizadas

Para utilizar otras fuentes específicas, debes cambiar tu compilador de LaTeX para usar ya sea `XeLatex` o `LuaLatex` como copiladores. En Overleaf puedes cambiar esa configuración en la opción de menú en la esquina superior izquierda de tu editor.

Una vez configurado el compilador apropiado, podrás incluir la siguiente configuración al inicio del documento:

```tex
\usepackage{fontspec}
\setmainfont{Arial}
```

Puedes probar otras fuentes como: `Times New Roman` o `Verdana`. Si estás usando Overleaf consulta la [lista de fuentes soportadas][2].

[Regresar al índice](#toc)

## Configurar Espaciado

A continuación se discuten opciones de interlineado, espaciado entre párrafos y opciones personalizadas de espaciado vertical.

### Interlineado

De manera predeterminada, la clase `apa7` utiliza interlineado de doble espacio cuando se usa el formato de una columna. Algunos trabajos universitarios podrían exigir un interlineado diferente. Para otras configuraciones, puedes incluir el paquete `setspace`:

```tex
\usepackage{setspace}

% Activa el tipo de interlineado que necesites:
% \singlespacing   % interlineado sencillo
% \onehalfspacing  % interlineado de uno y medio
\doublespacing     % interlineado doble
```

Utilizando el símbolo de porcentaje, puedes activar o desactivar el tipo de interlineado que necesites. Asegúrate de solo activar uno a la vez.

* `\singlespacing`: interlineado sencillo.
* `\onehalfspacing`: interlineado de uno y medio.
* `\doublespacing`: interlineado doble.

[Regresar al índice](#toc)

### Espaciado entre Párrafos

De forma predeterminada, los párrafos solo se separan con un retorno de carro. Para dejar un poco más de espacio entre los párrafos, incluye el paquete `parskip`:

```tex
\usepackage{parskip}
```

### Espaciado Perzonalizado

Si deseas dejar una línea adicional entre dos párrafos, puedes simplemente ejecutar el siguiente comando:

```tex
Párrafo 1.

\\
Párrafo 2.
```

Por otro lado, si necesitas dejar una cantidad arbitraria de espacio entre dos párrafos, puedes usar el comando `\vspace{logitud}`:

Por ejemplo:

```tex
\vspace{2pt}
```

El argumento que toma este comando es una longitud, y LaTeX reconoce varios tipos de unidades para especificar esa longitud. Aquí tienes las unidades más comunes que puedes usar:

Unidades absolutas (independientes del tamaño de la fuente actual):


* `pt`: Un punto tipográfico. Aproximadamente 1/72.27 de pulgada.
* `pc`: Una pica equivale a 12 puntos.
* `in`: Una pulgada.
* `mm`: Un milímetro.
* `cm`: Un centímetro.

Unidades relativas (dependientes del tamaño de la fuente actual):

* `em`: El ancho de la letra "M" en la fuente actual. Esta unidad es muy útil porque se escala con el tamaño de la fuente.
* `ex`: La altura de la letra "x" en la fuente actual. También se escala con el tamaño de la fuente.

[Regresar al índice](#toc)

## Apéndices

Comenzar la sección de apéndices es tan sencillo como introducir el comando `\appendix`, seguido de cada sección del apéndice utilizando los comandos de encabezados antes mencionados.

```tex
\appendix
\section{Título del apéndice}
```

Puede resultar conveniente referenciar un apéndice en particular. Para este propósito se puede colocar una etiqueta previo a cada sección, y luego se puede usar esa etiqueta para referenciarlo desde otras secciones del documento.

```tex
\section{Título de sección}
    Para ello, se recomienda consultar el Apéndice \ref{app:xyz}.

\appendix
\section{Título del apéndice}
\label{app:xyz}
```

Esta misma ténica se puede utilizar para referenciar otro tipo de secciones del documento.

[Regresar al índice](#toc)

## Múltiples autores

Hasta ahora se describió cómo configurar el documento cuando se tiene un único autor. No obstante, no es inusual tener documentos que han sido desarrollados por múltiples autores, incluso de diferentes instituciones. A continuación se describen algunos escenarios posibles, y cómo configurar los metadatos del documento para esos casos.

### Ejemplos

**Un autor, una institución:**

En el siguiente ejemplo, el autor es Terence Tao, del Departamento de Física Aplicada, Universidad Nacional.

{% raw %}
```tex
\authorsnames{Terence Tao}
\authorsaffiliations{{Departamento de Física Aplicada, Universidad Nacional}}
```
{% endraw %}

**Un autor, dos instituciones:**

En el siguiente ejemplo, el autor es Isaac Newton, y pertenece, tanto al Departamento de Física Aplicada de la Universidad Nacional, como a la Escuela de Matemáticas de la Universidad Estatal a Distancia.

{% raw %}
```tex
\authorsnames{Isaac Newton}
\authorsaffiliations{
    {Departamento de Física Aplicada, Universidad Nacional},
    {Escuela de Matemáticas, Universidad Estatal a Distancia}
}
```
{% endraw %}

**Dos autores, misma institución:**

En el siguiente ejemplo, los autores son Isaac Newton y Gottfried W. Leibniz, y ambos pertenecen a la Escuela de Matemáticas de la Universidad Estatal a Distancia.

```tex
\authorsnames{Isaac Newton, Gottfried W. Leibniz}
\authorsaffiliations{Escuela de Matemáticas, Universidad Estatal a Distancia}    
```

**Dos autores, diferente institución:**

En este ejemplo, los autores son Isaac Newton y Gottfried W. Leibniz. Isaac Newton pertenece al Departamento de Física Aplicada de la Universidad Nacional, mientras que Leibniz pertenece a la Escuela de Matemáticas de la Universidad Estatal a Distancia.

{% raw %}
```tex
\authorsnames[1,2]{Isaac Newton, Gottfried W. Leibniz}
\authorsaffiliations{
    {Departamento de Física Aplicada, Universidad Nacional},
    {Escuela de Matemáticas, Universidad Estatal a Distancia}
}
```
{% endraw %}

**Tres o más autores, diferentes instituciones:**

En este caso, los autores son Isaac Newton, Gottfried W. Leibniz y Albert Einstein. Newton y Einstein pertenecen al Departamento de Física Aplicada de la Universidad Nacional, mientras que Leibniz pertenece a dos instituciones: la Escuela de Matemáticas de la Universidad Estatal a Distancia y a la Cátedra de Física de la Universidad de Costa Rica.

{% raw %}
```tex
\authorsnames[1,{2,3},1]{Isaac Newton, Gottfried W. Leibniz, Albert Einstein}
\authorsaffiliations{
    {Departamento de Física Aplicada, Universidad Nacional},
    {Escuela de Matemáticas, Universidad Estatal a Distancia},
    {Cátedra de Física, Universidad De Costa Rica}
}
```
{% endraw %}

[Regresar al índice](#toc)

## Biblatex

Como se podría esperar, el paquete `apa7` tiene soporte predeterminado para citas y referencias bibliográficas en formato APA 7. En LaTeX existen diferentes paquetes que implementan soporte para referencias bibliográficas en diferentes formatos y la clase `apa7` soporta varios de ellos, pero el que recomiendan, por su compatibilidad, es el paquete `biblatex`.

Para agregar soporte de referencias APA 7 usando `biblatex basta con agregar una opción adicional a la clase de documento.

```tex
\documentclass[stu, 12pt, a4paper, biblatex]{apa7}
```

Alternativamente, se puede incluir el paquete directamente:

```tex
\usepackage[style=apa,backend=biber]{biblatex}
```

En este documento se introducen algunas nociones esenciales de cómo usar `biblatex`, pero si quieres aprenderlo en profundidad, puedes consultar la [documentación de biblatex][3]. 

[Regresar al índice](#toc)

### Fuentes Bibliográficas

Al usar `biblatex`, las fuentes bibliográficas que se usan en el documento APA se registran dentro de un archivo particular, siguiendo un formato especial llamado BibTeX. Por esa razón, en el proyecto LaTeX se debe crear un archivo con extensión `.bib` (por ejemplo `fuentes.bib`) en donde se registrará cada una de las fuentes bibliográficas que se referencian en el documento APA. 

Para aprender cómo crear fuentes bibliográficas te recomendamos leer la [Guía de BibTeX][4]. A continuación se muestra un ejemplo de cómo luce una entrada en el archivo de fuentes bibliográficas en formato BibTeX:

```bibtex
@book{KENNY,
  title={Breve historia de la filosofía occidental},
  author={Kenny, Anthony},
  year={2005},
  publisher={Paidós}
}

@book{STEWART,
  author   = {Stewart, James},
  title    = {Cálculo de una Variable, Trascendentes Tempranas},
  year      = 2018,
  edition   = 8,
  publisher = {Cengage Learning Editores},
  address   = {México D.F.}
}    
```

En este caso, `KENNY` y `STEWART` son identificadores de la fuente bibliográfica. La primera entrada corresponde a un libro llamado "Breve historia de la filosofía occidental", de Anthony Kenny, publicado en el 2005 por el editorial Paidós. Y la segunda entrada es del libro "Cálculo de una Variable, Trascendentes Tempranas" de James Stwewart, publicado en el 2018 por Cenage Learning Editores.

El archivo de fuentes bibliográficas puede contener múltiples entradas como esta, para diferentes tipos de fuentes. Consulta la [Guía de BibTeX][4] para más detalles.

Debes declarar este archivo `fuentes.bib` en el preámbulo de tu documento APA, en la sección posterior a la declaración de paquetes a fin de indicarle a `biblatex` en donde puede encontrar las fuentes que planeas referenciar en tu documento:

```tex
\addbibresource{fuentes.bib}
```

Una vez agregado tu archivo de fuentes bibliográficas a tu documento APA, podrás referenciar a cualquiera de las fuentes que agregues al archivo utilizando el identificador de la entrada que le asignes. Idealmente, cada identificador que escojas debería ser un mnemónico que te permita recordar fácilmente la fuente cuando estés escribiendo tu documento APA y necesites referenciarla.

[Regresar al índice](#toc)

## Citando con Biblatex

### Paráfrasis

Recuerda que en la paráfrasis la idea es expresar las ideas o información de una fuente original utilizando tus propias palabras y tu propia estructura de oración. Demuestras que has comprendido la información y la has integrado en tu propio pensamiento.

#### Parentética

En la cita parentética se incluye la información de la fuente entre paréntesis al final de la oración o cláusula que contiene la información citada. Generalmente incluye el apellido del autor y el año de publicación: (Apellido, Año). APA no exige que se incluya la página correspondiente de la fuente, aunque en documentos universitarios puede ser recomendable hacerlo.

#### Ejemplo de cita parentética:

```text
Se ha demostrado que la comprensión de los conceptos fundamentales del cálculo 
diferencial es crucial para abordar problemas de optimización complejos en 
diversas áreas aplicadas (Stewart, 2018).
```

**Ejemplo de cita parentética con biblatex:**

Para lograr este efecto usando `biblatex`, usamos el comando `\parencite{id-fuente}`. 

Por ejemplo, en tu documento, escribirías lo siguiente:

```tex
Se ha demostrado que la comprensión de los conceptos fundamentales del cálculo 
diferencial es crucial para abordar problemas de optimización complejos en 
diversas áreas aplicadas \parencite{STEWART}.    
```

El paquete `biblatex` se encargará de formatear el documento reemplazando la referencia mencionada por `\parencite` con los datos de la fuente correspondiente.

#### Narrativa

En la cita narrativa se incorpora el apellido del autor directamente en el texto como parte de la oración, seguido del año de publicación entre paréntesis: Apellido (Año).

**Ejemplo de cita narrativa:**

```text
Según Stewart (2018), la comprensión sólida de los conceptos fundamentales del 
cálculo diferencial es indispensable para resolver problemas complejos de 
optimización en diversas aplicaciones.
```

**Ejemplo de cita narrativa con biblatex:**

Para lograr este efecto con `biblatex`, se usa el comando `\textcite{id-fuenete}`. 

Por ejemplo, en tu documento, escribirías lo siguiente:

```tex
Según \textcite{STEWART}, la comprensión sólida de los conceptos fundamentales del 
cálculo diferencial es indispensable para resolver problemas complejos de 
optimización en diversas aplicaciones.    
```

[Regresar al índice](#toc)

### Cita Textual Corta

Recuerda que una cita textual corta es una reproducción *exacta*, palabra por palabra, de un fragmento de texto de la fuente original. No cambias ninguna palabra ni el orden de las frases. La cita debe contener menos de 40 palabras. APA exige que este tipo de cita especifique el origen de la información proporcionando un número de página o mecanismo para localizar el origen de la cita dentro de la fuente.

#### Parentética

**Ejemplo de cita parentética:**

```text
La autora afirma que "la topología proporciona un marco abstracto 
poderoso para entender la continuidad y la convergencia en espacios 
no euclidianos" (García, 2020, p. 45).
```

**Ejemplo de cita parentética con biblatex:** 

Para lograr este efecto usando `biblatex`, usamos el comando `\parencite[pág]{id-fuente}`.

```tex
La autora afirma que ``la topología proporciona un marco abstracto 
poderoso para entender la continuidad y la convergencia en espacios 
no euclidianos'' \parencite[45]{GARCIA}.
```

#### Narrativa

**Ejemplo de cita narrativa:**

```text
García (2020) señala que "la topología proporciona un marco abstracto 
poderoso para entender la continuidad y la convergencia en espacios 
no euclidianos" (p. 45).
```

**Ejemplo de cita narrativa usando biblatex:** 

Para lograr este efecto con `biblatex`, se usa el comando `\textcite{id-fuenete}` y colocaremos manualmente el número de página al final de la cita. 

```tex
\textcite{GARCIA} señala que ``la topología proporciona un marco abstracto 
poderoso para entender la continuidad y la convergencia en espacios 
no euclidianos'' (p. 45).
```

[Regresar al índice](#toc)

### Cita Textual Larga

Este tipo de cita se presenta en un bloque de texto separado, sangrado 0.5 pulgadas (1.27 cm) desde el margen izquierdo. No se utilizan comillas. La cita parentética va después del punto final del bloque de cita. Según APA, por ser cita textual, debería incluirse el número de página u otro mecanismo para localizar el origen del texto citado.

Para formatear este tipo de cita es mejor incluir un paquete adicional llamado `csquotes`. Este paquete proporciona funciones avanzadas para citaciones en línea y en bloque.

```tex
\usepackage{csquotes}
```

#### Parentética

**Ejemplo de cita parentética:**

```text
Los autores discutieron la dificultad inherente en la enseñanza de conceptos 
abstractos en matemáticas de la siguiente manera:

   Se presenta un desafío significativo al intentar transmitir la intuición 
   detrás de estructuras algebraicas abstractas a estudiantes que recién 
   comienzan su formación universitaria. La desconexión entre la manipulación 
   simbólica formal y la visualización de los objetos matemáticos subyacentes 
   puede obstaculizar la comprensión profunda y la capacidad de aplicar 
   estos conceptos en nuevos contextos. Es fundamental desarrollar estrategias 
   pedagógicas que cierren esta brecha y fomenten una comprensión más intuitiva
   y conectada de las ideas abstractas. (López & Fernández, 2018, p. 115)    
```

**Ejemplo de cita parentética con biblatex:** 

Para lograr este efecto usando `biblatex`, usamos el entorno `displayquote` para encerrar el texto que se está reproduciendo y colocamos la cita al final mediante el clásico `\parencite[pág]{id-fuente}`.

```tex
Los autores discutieron la dificultad inherente en la enseñanza de conceptos 
abstractos en matemáticas de la siguiente manera:

\begin{displayquote}
   Se presenta un desafío significativo al intentar transmitir la intuición 
   detrás de estructuras algebraicas abstractas a estudiantes que recién 
   comienzan su formación universitaria. La desconexión entre la manipulación 
   simbólica formal y la visualización de los objetos matemáticos subyacentes 
   puede obstaculizar la comprensión profunda y la capacidad de aplicar 
   estos conceptos en nuevos contextos. Es fundamental desarrollar estrategias 
   pedagógicas que cierren esta brecha y fomenten una comprensión más intuitiva
   y conectada de las ideas abstractas. \parencite[115]{LF2018}
\end{displayquote}   
```

#### Narrativa

**Ejemplo de cita narrativa:**


```text
López y Fernández (2018) examinaron la complejidad de enseñar ideas matemáticas 
abstractas, indicando lo siguiente:

   Se presenta un desafío significativo al intentar transmitir la intuición 
   detrás de estructuras algebraicas abstractas a estudiantes que recién 
   comienzan su formación universitaria. La desconexión entre la manipulación 
   simbólica formal y la visualización de los objetos matemáticos subyacentes 
   puede obstaculizar la comprensión profunda y la capacidad de aplicar estos 
   conceptos en nuevos contextos. Es fundamental desarrollar estrategias 
   pedagógicas que cierren esta brecha y fomenten una comprensión más intuitiva 
   y conectada de las ideas abstractas. (p. 115)
```

**Ejemplo de cita narrativa usando biblatex:** 

Para lograr este efecto con `biblatex`, colocamos la cita al inicio mediante el clásico `\textcite{id-fuente}` y usamos el entorno `displayquote` para encerrar el texto que se está reproduciendo. Además, colocaremos manualmente el número de página al final del texto de la cita. 

```tex
\textcite{LF2018} examinaron la complejidad de enseñar ideas matemáticas 
abstractas, indicando lo siguiente:

\begin{displayquote}
   Se presenta un desafío significativo al intentar transmitir la intuición 
   detrás de estructuras algebraicas abstractas a estudiantes que recién 
   comienzan su formación universitaria. La desconexión entre la manipulación 
   simbólica formal y la visualización de los objetos matemáticos subyacentes 
   puede obstaculizar la comprensión profunda y la capacidad de aplicar estos 
   conceptos en nuevos contextos. Es fundamental desarrollar estrategias 
   pedagógicas que cierren esta brecha y fomenten una comprensión más intuitiva 
   y conectada de las ideas abstractas. (p. 115)    
\end{displayquote}
```

[Regresar al índice](#toc)

## Referencias Citadas

Incluir las referencias citadas es tan simple como invocar el comando `\printbibliography` al final del documento:

```tex
\section{Referencias}

\printbibliography
```

Toda referencia citada mediante `\textcite` o `\parencite` será incluida en el listado de referencias y se formatearán en el estilo de APA 7.

[Regresar al índice](#toc)

## Plantilla de Proyecto

Cuando estés listo(a) para iniciar un nuevo proyecto APA usando LaTeX puedes iniciar copiando nuestra [plantilla de documento][0] que contiene ejemplos de todo lo que se menciona en esta guía.

## Lectura Adicional

* [Plantilla de Proyecto APA][0]
* [La Introducción No Tan Corta de LaTeX][1]
* [Lista de Fuentes Soportadas por Overlead][2]
* [Documentación de BibLaTeX][3]
* [Guía de Usuario de BibTeX][4]

[0]: https://www.overleaf.com/project/680c4d23e37f1054545afa6f
[1]: https://mirrors.ucr.ac.cr/CTAN/info/lshort/spanish/lshort-letter.pdf
[2]: https://www.overleaf.com/learn/latex/Questions/Which_OTF_or_TTF_fonts_are_supported_via_fontspec%3F
[3]: https://mirrors.ucr.ac.cr/CTAN/macros/latex/contrib/biblatex/doc/biblatex.pdf
[4]: https://bibtex.eu/es/