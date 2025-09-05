---
layout: post
title: "Geometría Euclídea con LaTex"
description: "Explora ejemplos de código LaTeX para geometría euclídea utilizando tkz-euclide."
date: 2025-08-16T18:57:00-06:00
author: edalorzo
image: '/images/64.jpeg'
tags: [latex, geometría]
commissions: [cofoma]
featured: true
toc: false
---

Esta entrada contiene decenas de ejemplos de cómo crear diagramas de geometría euclídea en LaTeX utilizando el paquete `tkz-euclide`. 
Los ejemplos aquí desarrollados son parte de una [presentación sobre geometría euclídea][1] para la edición del 2025 del 
Congreso Nacional de Ciencia, Tecnología y Sociedad ([CONCITES][0]). 

Abajo encontrarás una base de datos que contiene alrededor de 51 diferentes ejemplos básicos de diferentes tipos de 
diagramas de geometría euclídea creados con el paquete `tkz-euclide`.

## Buscador de ejemplos

<div id="tkz-search-container"></div>

<!-- PureCSS Framework -->
<link href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/grids-responsive-min.css" rel="stylesheet" />

<!-- Prism.js for syntax highlighting -->
<link href="https://cdn.jsdelivr.net/npm/prismjs@1.29.0/themes/prism.min.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/prismjs@1.29.0/plugins/toolbar/prism-toolbar.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/prismjs@1.29.0/components/prism-core.min.js" defer></script>
<script src="https://cdn.jsdelivr.net/npm/prismjs@1.29.0/plugins/autoloader/prism-autoloader.min.js" defer></script>
<script src="https://cdn.jsdelivr.net/npm/prismjs@1.29.0/plugins/toolbar/prism-toolbar.min.js" defer></script>
<script>
  // Configurar Autoloader para cargar lenguaje LaTeX
  window.Prism = window.Prism || {}; 
  Prism.plugins = Prism.plugins || {}; 
  Prism.plugins.autoloader = Prism.plugins.autoloader || {}; 
  Prism.plugins.autoloader.languages_path = 'https://cdn.jsdelivr.net/npm/prismjs@1.29.0/components/';
</script>

<!-- Lit.js search component -->
<script type="module" src="/js/tkz-search.js"></script>

## Como usar la base de datos de ejemplos

Para localizar un ejemplo escribe una o más palabras clave (p.ej.: coordenadas, punto, segmento, ángulo, triángulo, equilátero, isósceles, escaleno, recto, polígono, mediatriz, bisectriz, circunferencia, baricentro, etc.), o comandos específicos de la librería `tkz-euclide` (p.ej.: `tkzDefPoint`, `tkzDrawSegment`, `tkzLabelPoint`, etc.) en el campo de búsqueda. 

Los resultados se actualizarán automáticamente
y se mostrarán ejemplos relevantes con su respectivo código LaTeX. Si quieres ver todos los ejemplos uno por uno puedes escribir `ejemplo1`, `ejemplo2`, `...`, `ejemplo51`.

## Como utilizar el código LaTeX
Cada ejemplo tiene un botón "Ver código LaTeX" que abre un popup con el código correspondiente. Puedes copiar el código al portapapeles usando el botón "Copiar".  Luego, puedes pegar el código en tu editor LaTeX favorito, como Overleaf, TeXShop, TeXworks, etc, y compilarlo para ver el diagrama, el cual debe corresponderse con la vista previa que puedes ver en los resultados de la búsqueda. 

## Documentos Adicionales

* [Descargar Ejercicios del Taller][3]
* [Ejemplos de Geometría Euclídea con LaTex][1] 
* [Lista de Comandos de tkz-euclide][2]
* [Documentación Oficial de tkz-base][4]
* [Documentación Oficial de tkz-euclide][5]

[0]: https://www.cientec.or.cr/programas/educadores-divulgadores/concites-m-2025
[1]: {{site.baseurl}}/documentos/concites/ejemplos-geometria-latex.pdf
[2]: {{site.baseurl}}/documentos/concites/poster-comandos-tkz-euclide.pdf
[3]: {{site.baseurl}}/documentos/concites/taller-geometría-latex.pdf
[4]: http://mirrors.ctan.org/macros/latex/contrib/tkz/tkz-base/doc/tkz-base.pdf
[5]: http://mirrors.ctan.org/macros/latex/contrib/tkz/tkz-euclide/doc/tkz-euclide.pdf
