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

En esta entrada contiene decenas de ejemplos de cómo crear diagramas de geometría en LaTeX utilizando el paquete `tkz-euclide`. 
Los ejemplos aquí desarrollados son parte de una [presentación sobre geometría euclídea][1] para la edición del 2025 del 
Congreso Nacional de Ciencia, Tecnología y Sociedad ([CONCITES][0]). 

Se adjunta con este artículo una base de datos contiene de alrededor de 50 diferentes ejemplos de diferentes tipos de 
diagramas de geometría euclídea básicos creados utilizando `tkz-euclide`.


Para localizar un ejemplo escribe una o más palabras clave (p.ej.: coordenadas, punto, segmento, ángulo, triángulo, polígono, mediatriz, bisectriz, circunferencia, etc.) 
y se mostrarán ejemplos relevantes con el código LaTeX resaltado. Si quieres ver todos los ejemplos uno por uno puedes escribir ejemplo1, ejemplo2, etc.

<div class="tkz-search">
  <label for="tkz-query" class="tkz-label">Palabras clave</label>
  <input id="tkz-query" class="tkz-input" type="search" placeholder="p. ej., triángulo, mediatriz, circunferencia" autocomplete="off" />
  <div id="tkz-results" class="tkz-results" aria-live="polite"></div>
</div>

<style>
.tkz-search{margin:1.5rem 0}
.tkz-label{display:block;font-weight:600;margin-bottom:.5rem}
.tkz-input{width:100%;padding:.75rem 1rem;border:1px solid #dddddd;border-radius:8px;font-size:1rem}
.tkz-results{margin-top:1rem;display:grid;gap:1rem}
.tkz-example{border:1px solid #e5e7eb;border-radius:10px;padding:1rem}
.tkz-title{margin:0 0 .25rem 0;font-size:1.05rem}
.tkz-desc{margin:.25rem 0 .5rem 0;color:#555}
.tkz-tags{margin-top:.5rem}
.tkz-tag{display:inline-block;background:#f2f4f7;border-radius:999px;padding:.15rem .5rem;margin-right:.25rem;font-size:.85rem}
.tkz-empty,.tkz-error{color:#666}
.tkz-example details summary{cursor:pointer}
.tkz-example pre{max-width:100%;overflow:auto}
.tkz-figure{margin-top:.75rem}
.tkz-figure img{max-width:100%;height:auto;display:block;border:1px solid #e5e7eb;border-radius:8px}
.tkz-figcaption{font-size:.85rem;color:#666;margin-top:.25rem}
</style>

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

<!-- JS específico del buscador -->
<script src="/js/tkz-search.js" defer></script>
 

## Documentos Adicionales

* [Geometría Euclidiana con LaTex: Creando Diagramas Profesionales con tkz-euclide][1] 

[0]: https://www.cientec.or.cr/programas/educadores-divulgadores/concites-m-2025
[1]: {{site.baseurl}}/documentos/concites-2025-taller-geometria-latex.pdf