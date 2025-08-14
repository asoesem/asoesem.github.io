# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Jekyll-based academic website for ASOESEM (Asociación de Estudiantes de la carrera de la Enseñanza de las Matemáticas de la UNED), a Costa Rican student association for Mathematics Education. The site publishes mathematical content, tutorials, and educational resources primarily in Spanish.

## Development Commands

### Setup
```bash
bundle install
```

### Build and Serve
```bash
# Serve the site locally for development
bundle exec jekyll serve

# Build the site for production
bundle exec jekyll build

# Build with drafts included
bundle exec jekyll serve --drafts
```

### Content Management
- Posts are in `_posts/` with YAML front matter
- Drafts are in `_drafts/` 
- Authors are in `_authors/`
- Static pages are in `_pages/`
- Images are stored in `images/`
- Bibliography files are in `_bibliography/`

## Architecture

### Custom Math Block Plugin
The site includes a custom Jekyll plugin (`_plugins/math_block_tags.rb`) that provides mathematical theorem blocks:
- Supports theorem, postulate, corollary, lemma, axiom, definition, and proof blocks
- Creates numbered references and cross-links
- Usage: `{% theorem title="Name" label="ref-id" %}...{% endtheorem %}`
- Reference with: `{% block_ref ref-id %}`

### Jekyll Configuration
- Uses kramdown for markdown processing
- Permalink structure: `/articulos/:slug` for posts
- Collections for posts, pages, and authors
- Plugins: jekyll-paginate, jekyll-sitemap, jekyll-scholar, jekyll-toc, jekyll-figure, jekyll-mermaid
- Bibliography support with APA style in Spanish

### Styling
- SCSS files organized in `_sass/` with modular structure
- Custom theorem styling in `_sass/5-theorems/theorems.scss`
- Responsive design with grid system

### Content Structure
- Mathematical content uses LaTeX notation
- Bilingual content (primarily Spanish)
- Academic formatting with proper citations
- Image assets organized by topic in subdirectories

## Important Notes

- Always use `bundle exec` prefix for Jekyll commands due to gem version conflicts
- Mathematical content requires proper LaTeX formatting
- Images should be optimized and placed in topic-specific subdirectories
- All content should follow academic writing standards
- Site is deployed to GitHub Pages at asoesem.org
