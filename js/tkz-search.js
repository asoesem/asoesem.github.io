(function(){
  'use strict';

  function debounce(fn, wait){
    let t; return function(){ const ctx=this, args=arguments; clearTimeout(t); t=setTimeout(()=>fn.apply(ctx,args), wait); };
  }

  function normalize(str){
    return (str||"").toString().toLowerCase().normalize('NFD').replace(/\p{Diacritic}/gu,'');
  }

  function matchItem(item, qTerms){
    const haystack = [
      item.title, item.description,
      (item.keywords||[]).join(' '), (item.tags||[]).join(' '), item.latex
    ].map(normalize).join(' \n ');
    return qTerms.every(term => haystack.indexOf(term) !== -1);
  }

  function renderItem(item){
    const codeEsc = item.latex
      .replace(/&/g,'&amp;')
      .replace(/</g,'&lt;')
      .replace(/>/g,'&gt;');

    const imageHtml = item.image ? `
          <figure class="tkz-figure">
            <img src="${item.image}" alt="${item.image_alt || item.title}" loading="lazy" />
            <figcaption class="tkz-figcaption">${item.caption || 'Vista previa del diagrama'}</figcaption>
          </figure>
        ` : '';

    return `
      <article class="tkz-example">
        <h3 class="tkz-title">${item.title}</h3>
        <p class="tkz-desc">${item.description||''}</p>
        ${imageHtml}
        <details>
          <summary>Ver código LaTeX</summary>
          <pre><code class="language-latex">${codeEsc}</code></pre>
        </details>
        ${ item.tags && item.tags.length ? `<div class="tkz-tags">${item.tags.map(t=>`<span class="tkz-tag">#${t}</span>`).join(' ')}</div>` : ''}
      </article>
    `;
  }

  function renderResults(list){
    const container = document.getElementById('tkz-results');
    if(!container) return;
    if(!list.length){
      container.innerHTML = '<p class="tkz-empty">No se encontraron ejemplos. Intente con otras palabras clave.</p>';
      return;
    }
    container.innerHTML = list.map(renderItem).join('\n');
    if(window.Prism && Prism.highlightAll) { Prism.highlightAll(); }
    if(window.hljs && hljs.highlightAll){ hljs.highlightAll(); }
  }

  function bySortThenTitle(a,b){
    const sa = Number.isFinite(a.sort) ? a.sort : 1e9;
    const sb = Number.isFinite(b.sort) ? b.sort : 1e9;
    if(sa !== sb) return sa - sb;
    return (a.title||'').localeCompare(b.title||'', 'es', {sensitivity:'base'});
  }

  function onInput(examples){
    const q = document.getElementById('tkz-query').value || '';
    const terms = normalize(q).split(/\s+/).filter(Boolean);
    if(!terms.length){
      const container = document.getElementById('tkz-results');
      if(container){ container.innerHTML = ''; }
      return;
    }
    const matched = examples.filter(item=>matchItem(item, terms)).sort(bySortThenTitle);
    renderResults(matched.slice(0,50));
  }

  function boot(){
    const input = document.getElementById('tkz-query');
    if(!input) return;
    fetch('/js/tkz-examples.json')
      .then(r=>r.json())
      .then(examples=>{
        examples.sort(bySortThenTitle);
        input.addEventListener('input', debounce(()=>onInput(examples), 200));
        // initial state: show nothing until user types
        const container = document.getElementById('tkz-results');
        if(container){ container.innerHTML = ''; }
      })
      .catch(err=>{
        console.error('No se pudo cargar tkz-examples.json', err);
        const container = document.getElementById('tkz-results');
        if(container){ container.innerHTML = '<p class="tkz-error">No se pudo cargar la base de ejemplos.</p>'; }
      });
  }

  document.addEventListener('DOMContentLoaded', boot);
})();