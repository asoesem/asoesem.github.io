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
      <div style="margin-top: 0.75rem;">
        <img src="${item.image}" alt="${item.image_alt || item.title}" loading="lazy" style="max-width: 100%; height: auto; display: block; border: 1px solid #e5e7eb; border-radius: 8px;" />
        <p style="font-size: 0.85rem; color: #666; margin-top: 0.25rem;">${item.caption || 'Vista previa del diagrama'}</p>
      </div>
    ` : '';

    const tagsHTML = item.tags && item.tags.length ? `
      <div style="margin-top: 0.5rem;">
        ${item.tags.map(tag => `<span style="display: inline-block; background: #f2f4f7; border-radius: 999px; padding: 0.15rem 0.5rem; margin-right: 0.25rem; font-size: 0.85rem;">#${tag}</span>`).join('')}
      </div>
    ` : '';

    const escapedLatex = item.latex
      .replace(/&/g, '&amp;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;');

    return `
      <div style="border: 1px solid #e5e7eb; border-radius: 10px; padding: 1rem;">
        <h3 style="margin: 0 0 0.25rem 0; font-size: 1.05rem;">${item.title}</h3>
        <p style="margin: 0.25rem 0 0.5rem 0; color: #555;">${item.description || ''}</p>
        ${imageHTML}
        <details style="margin-top: 0.5rem;">
          <summary style="cursor: pointer;">Ver código LaTeX</summary>
          <pre style="max-width: 100%; overflow: auto; margin-top: 0.5rem;"><code class="language-latex">${escapedLatex}</code></pre>
        </details>
        ${tagsHTML}
      </div>
    `;
  }
}

// Initialize when DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById('tkz-search-container');
  if (container) {
    new TkzSearch(container);
  }
});