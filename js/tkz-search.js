class TkzSearch {
  constructor(container) {
    this.container = container;
    this.query = '';
    this.examples = [];
    this.filteredExamples = [];
    this.loading = true;
    this.error = null;
    this.debounceTimer = null;
    
    this.loadExamples();
    this.render();
  }

  async loadExamples() {
    try {
      const response = await fetch('/js/tkz-examples.json');
      if (!response.ok) throw new Error('No se pudo cargar la base de ejemplos');
      
      this.examples = await response.json();
      this.examples.sort(this.bySortThenTitle.bind(this));
      this.loading = false;
      this.render();
    } catch (err) {
      console.error('Error loading examples:', err);
      this.error = 'No se pudo cargar la base de ejemplos.';
      this.loading = false;
      this.render();
    }
  }

  normalize(str) {
    return (str || "").toString().toLowerCase().normalize('NFD').replace(/\p{Diacritic}/gu, '');
  }

  matchItem(item, qTerms) {
    const haystack = [
      item.title, 
      item.description,
      (item.keywords || []).join(' '), 
      (item.tags || []).join(' '), 
      item.latex
    ].map(this.normalize.bind(this)).join(' \n ');
    
    return qTerms.every(term => haystack.indexOf(term) !== -1);
  }

  bySortThenTitle(a, b) {
    const sa = Number.isFinite(a.sort) ? a.sort : 1e9;
    const sb = Number.isFinite(b.sort) ? b.sort : 1e9;
    if (sa !== sb) return sa - sb;
    return (a.title || '').localeCompare(b.title || '', 'es', { sensitivity: 'base' });
  }

  handleInput(e) {
    this.query = e.target.value;
    
    clearTimeout(this.debounceTimer);
    this.debounceTimer = setTimeout(() => {
      this.search();
    }, 200);
  }

  search() {
    const terms = this.normalize(this.query).split(/\s+/).filter(Boolean);
    
    if (!terms.length) {
      this.filteredExamples = [];
      this.renderResults();
      return;
    }

    this.filteredExamples = this.examples
      .filter(item => this.matchItem(item, terms))
      .sort(this.bySortThenTitle.bind(this))
      .slice(0, 50);

    this.renderResults();
    
    setTimeout(() => {
      if (window.Prism && Prism.highlightAll) Prism.highlightAll();
      if (window.hljs && hljs.highlightAll) hljs.highlightAll();
    }, 0);
  }


  render() {
    if (this.loading) {
      this.container.innerHTML = `
        <div style="color: #31708f; background-color: #d9edf7; border: 1px solid #bce8f1; padding: 1rem; text-align: center; border-radius: 4px;">
          Cargando ejemplos...
        </div>
      `;
      return;
    }

    if (this.error) {
      this.container.innerHTML = `
        <div style="color: #a94442; background-color: #f2dede; border: 1px solid #ebccd1; border-radius: 4px; padding: 1rem; text-align: center;">
          ${this.error}
        </div>
      `;
      return;
    }

    const searchInput = `
      <div style="margin: 1.5rem 0;">
        <div style="margin-bottom: 1rem;">
          <label for="tkz-query" style="display: block; font-weight: 600; margin-bottom: 0.5rem;">Palabras clave</label>
          <input 
            id="tkz-query"
            type="search" 
            placeholder="p. ej., triángulo, mediatriz, circunferencia"
            autocomplete="off"
            value="${this.query}"
            style="width: 100%; padding: 0.75rem 1rem; border: 1px solid #dddddd; border-radius: 8px; font-size: 1rem; box-sizing: border-box;"
          />
        </div>
        <div id="tkz-results"></div>
      </div>
    `;

    this.container.innerHTML = searchInput;
    
    // Set up event listener
    const input = this.container.querySelector('#tkz-query');
    if (input) {
      input.addEventListener('input', this.handleInput.bind(this));
    }

    this.renderResults();
  }

  renderResults() {
    const resultsContainer = this.container.querySelector('#tkz-results');
    if (!resultsContainer) return;

    if (this.query && this.filteredExamples.length === 0) {
      resultsContainer.innerHTML = `
        <div style="color: #666; padding: 1rem; text-align: center;">
          No se encontraron ejemplos. Intente con otras palabras clave.
        </div>
      `;
      return;
    }

    if (this.filteredExamples.length > 0) {
      resultsContainer.innerHTML = `
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 1rem;">
          ${this.filteredExamples.map(item => `
            <div>
              ${this.renderExampleHTML(item)}
            </div>
          `).join('')}
        </div>
      `;
    } else {
      resultsContainer.innerHTML = '';
    }
  }

  renderExampleHTML(item) {
    const imageHTML = item.image ? `
      <div style="margin-top: 0.75rem; text-align: center;">
        <img src="${item.image}" alt="${item.image_alt || item.title}" loading="lazy" style="max-width: 100%; height: auto; display: block; border: none; margin: 0 auto;" />
      </div>
    ` : '';

    return `
      <div style="border: 1px solid #e5e7eb; border-radius: 10px; padding: 1rem; display: flex; flex-direction: column; height: 100%;">
        <h3 style="margin: 0 0 0.25rem 0; font-size: 1.05rem;">${item.title}</h3>
        <p style="margin: 0.25rem 0 0.5rem 0; color: #555; flex: 1;">${item.description || ''}</p>
        ${imageHTML}
        <button 
          class="pure-button pure-button-primary" 
          style="margin-top: 1rem; width: 100%;"
          onclick="tkzSearchInstance.openPopup('${item.id}')"
        >
          Ver código LaTeX
        </button>
      </div>
    `;
  }

  openPopup(itemId) {
    const item = this.examples.find(ex => ex.id === itemId);
    if (!item) return;

    const escapedLatex = item.latex
      .replace(/&/g, '&amp;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;');

    const imageHTML = item.image ? `
      <div style="margin: 1rem 0;">
        <img src="${item.image}" alt="${item.image_alt || item.title}" loading="lazy" style="max-width: 100%; height: auto; display: block; border: 1px solid #e5e7eb; border-radius: 8px;" />
        <p style="font-size: 0.85rem; color: #666; margin-top: 0.25rem;">${item.caption || 'Vista previa del diagrama'}</p>
      </div>
    ` : '';

    const tagsHTML = item.tags && item.tags.length ? `
      <div style="margin: 1rem 0;">
        <strong>Tags:</strong><br>
        ${item.tags.map(tag => `<span style="display: inline-block; background: #f2f4f7; border-radius: 999px; padding: 0.15rem 0.5rem; margin: 0.25rem 0.25rem 0 0; font-size: 0.85rem;">#${tag}</span>`).join('')}
      </div>
    ` : '';

    const popup = document.createElement('div');
    popup.id = 'tkz-popup';
    popup.style.cssText = `
      position: fixed; top: 0; left: 0; width: 100%; height: 100%; 
      background: rgba(0,0,0,0.5); z-index: 1000; display: flex; 
      align-items: center; justify-content: center; padding: 1rem;
    `;

    popup.innerHTML = `
      <div style="background: white; border-radius: 10px; max-width: 90vw; max-height: 90vh; 
           overflow-y: auto; padding: 2rem; position: relative;">
        <button 
          onclick="document.getElementById('tkz-popup').remove()" 
          style="position: absolute; top: 1rem; right: 1rem; border: none; 
                 background: #f0f0f0; border-radius: 50%; width: 30px; height: 30px; 
                 cursor: pointer; font-size: 1.2rem;"
        >×</button>
        
        <h2 style="margin: 0 0 1rem 0;">${item.title}</h2>
        <p style="color: #555; margin-bottom: 1rem;">${item.description || ''}</p>
        
        <div style="margin-bottom: 1rem;">
          <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 0.5rem;">
            <h3 style="margin: 0;">Código LaTeX:</h3>
            <button 
              class="pure-button" 
              onclick="tkzSearchInstance.copyToClipboard('${item.id}')"
              style="background: #28a745; color: white; border: none; padding: 0.5rem 1rem; border-radius: 4px; cursor: pointer;"
            >
              <i class="icon ion-md-copy"></i> Copiar código
            </button>
          </div>
          <pre id="latex-code-${item.id}" style="background: #f8f8f8; padding: 1rem; border-radius: 8px; overflow: auto; max-height: 400px;"><code class="language-latex">${escapedLatex}</code></pre>
        </div>
        
        ${tagsHTML}
        ${imageHTML}
      </div>
    `;

    document.body.appendChild(popup);
    
    // Close popup when clicking outside
    popup.addEventListener('click', (e) => {
      if (e.target === popup) {
        popup.remove();
      }
    });

    setTimeout(() => {
      if (window.Prism && Prism.highlightAll) Prism.highlightAll();
    }, 0);
  }

  async copyToClipboard(itemId) {
    const item = this.examples.find(ex => ex.id === itemId);
    if (!item) return;

    try {
      await navigator.clipboard.writeText(item.latex);
      
      // Show feedback
      const button = document.querySelector(`button[onclick="tkzSearchInstance.copyToClipboard('${itemId}')"]`);
      if (button) {
        const originalText = button.innerHTML;
        button.innerHTML = '<i class="icon ion-md-checkmark"></i> ¡Copiado!';
        button.style.background = '#28a745';
        
        setTimeout(() => {
          button.innerHTML = originalText;
          button.style.background = '#28a745';
        }, 2000);
      }
    } catch (err) {
      console.error('Error copying to clipboard:', err);
      alert('No se pudo copiar el código. Intente seleccionar y copiar manualmente.');
    }
  }
}

// Initialize when DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById('tkz-search-container');
  if (container) {
    window.tkzSearchInstance = new TkzSearch(container);
  }
});