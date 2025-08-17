# Project Guidelines for ASOESEM Website

This repository contains the official website for ASOESEM (Asociación de Estudiantes de la carrera de la Enseñanza de las Matemáticas de la UNED). The site is built with Jekyll and deployed with GitHub Pages. Primary language: Spanish (Costa Rica).

## Quick Overview
- Type: Jekyll static website (academic blog and resources)
- URL: https://asoesem.org
- Tech Stack:
  - Jekyll 4.3.2 on Ruby 3.1.3
  - Bundler for dependency management
  - Plugins: jekyll-scholar (APA), jekyll-toc, jekyll-figure, jekyll-mermaid, jekyll-paginate, jekyll-sitemap
- Timezone: America/Costa_Rica

## Project Structure
Root highlights:
- .github/workflows/jekyll.yml — GitHub Pages deploy workflow
- _config.yml — Main Jekyll configuration (plugins, collections, scholar)
- Gemfile / Gemfile.lock — Dependencies
- index.html, feed.xml, 404.html — Site entry and feeds
- README.md — Documentation

Content and theme:
- _authors — Author profiles
- _bibliography — BibTeX files for citations
- _data — Site settings (navigation, branding, org info)
- _pages, _posts, _drafts — Pages and articles
- _includes, _layouts — Liquid templates
- _sass — SCSS (variables, modules, layouts, theorems)
- js, images, documentos, blog — Assets and content

Note: _site is the generated output and should not be edited manually.

## Build and Serve (Local)
Prerequisites: Ruby 3.1.3+, Bundler.

1) Configure Bundler to install locally (prevents permission issues):
   bundle config set --local path 'vendor/bundle'

2) Install dependencies:
   bundle install

3) Build the site:
   bundle exec jekyll build

4) Serve locally for development:
   bundle exec jekyll serve --host 0.0.0.0 --port 4000

- Local URL: http://localhost:4000
- Typical full build: ~2–3 seconds after dependencies are installed

Troubleshooting:
- If Bundler is missing: gem install bundler --user-install (and ensure your gem bin dir is on PATH)
- Clear caches: rm -rf _site/ .jekyll-cache/ && bundle clean && bundle install --redownload

## Content Guidelines
- Posts live in _posts/ with name YYYY-MM-DD-title.md
- Use YAML front matter like:
  ---
  layout: post
  title: Título del artículo
  description: Descripción breve
  date: YYYY-MM-DDTHH:MM:SS-06:00
  author: autor_id
  image: '/images/imagen.png'
  tags: [tag1, tag2]
  commissions: [cofoma, cocodi]
  featured: true/false
  toc: true/false
  ---
- Citations use jekyll-scholar with APA; references in _bibliography/
- Images go under images/

## CI/CD
- GitHub Actions workflow (.github/workflows/jekyll.yml) builds with Jekyll and deploys to GitHub Pages on pushes to main or manual dispatch.
- Uses .ruby-version (3.1.3) and caches Bundler gems automatically.

## What Junie Should Do
- Prefer minimal changes focused on content or configuration.
- When modifying site behavior or content:
  1. Run a local build: bundle exec jekyll build
  2. Optionally serve locally to verify pages: bundle exec jekyll serve
  3. Validate internal links and that citations resolve in the built _site/
- No test suite is provided; validation is via successful build/serve and content correctness.
- Do not edit files under _site (generated). Commit source changes only.
- Follow existing style organization in _sass and templates in _includes/_layouts.

## Quick Commands
- Initial setup:
  bundle config set --local path 'vendor/bundle'
  bundle install

- Build/serve:
  bundle exec jekyll build
  bundle exec jekyll serve --host 0.0.0.0 --port 4000

- Troubleshoot:
  bundle clean
  rm -rf _site/ .jekyll-cache/
  bundle install --redownload

## Notes
- Primary language is Spanish; keep content and UI strings consistent with existing site tone.
- If Ruby version issues arise, ensure Ruby 3.1.3 is active (see .ruby-version).
