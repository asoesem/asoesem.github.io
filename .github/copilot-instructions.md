# Copilot Instructions for ASOESEM Website

## Repository Overview

This is the official website for ASOESEM (Asociación de Estudiantes de la carrera de la Enseñanza de las Matemáticas de la UNED), the Student Association for Mathematics Teaching at UNED Costa Rica. The site is built with Jekyll and serves as an academic blog and resource center for mathematics education.

**Repository Type**: Jekyll static website  
**Primary Language**: Spanish (Costa Rica)  
**Content Focus**: Mathematics education, academic articles, student organization resources  
**Deployment**: GitHub Pages via automated workflow  
**Site URL**: https://asoesem.org  

## Technology Stack

- **Jekyll**: 4.3.2 (Ruby-based static site generator)
- **Ruby Version**: 3.1.3 (specified in `.ruby-version`)
- **Bundler**: 2.4.19+ for dependency management
- **Academic Features**: Jekyll-scholar with APA citation support
- **Special Plugins**:
  - `jekyll-scholar`: Academic citations and bibliography
  - `jekyll-toc`: Table of contents generation
  - `jekyll-figure`: Academic figure management
  - `jekyll-mermaid`: Diagram support
  - `jekyll-paginate`: Blog pagination
  - `jekyll-sitemap`: SEO optimization

## Build Instructions

### Prerequisites
- Ruby 3.1.3+ (check with `ruby --version`)
- Bundler gem manager

### Setup Process (Required Steps)

1. **Install Bundler** (if not available):
   ```bash
   gem install bundler --user-install
   export PATH="$HOME/.local/share/gem/ruby/3.2.0/bin:$PATH"
   ```

2. **Configure Bundle for Local Installation** (CRITICAL):
   ```bash
   bundle config set --local path 'vendor/bundle'
   ```
   *This avoids permission issues when installing gems*

3. **Install Dependencies**:
   ```bash
   bundle install
   ```
   *Takes ~2-3 minutes on first run*

4. **Build the Site**:
   ```bash
   bundle exec jekyll build
   ```
   *Build time: ~2-3 seconds*

5. **Serve Locally** (for development):
   ```bash
   bundle exec jekyll serve --host 0.0.0.0 --port 4000
   ```
   *Site available at http://localhost:4000*

### Common Build Issues & Solutions

**Permission Errors**: Always use `bundle config set --local path 'vendor/bundle'` before installing gems. This configures bundle to install dependencies locally rather than system-wide.

**Missing Bundler**: Install with `gem install bundler --user-install` and update PATH as shown above.

**Ruby Version Mismatch**: Ensure Ruby 3.1.3+ is installed. The project specifies version in `.ruby-version`.

## Project Structure

### Root Directory
```
├── .github/workflows/jekyll.yml  # GitHub Pages deployment
├── .ruby-version                 # Ruby version specification (3.1.3)
├── _config.yml                   # Main Jekyll configuration
├── Gemfile                       # Ruby dependencies
├── Gemfile.lock                  # Locked dependency versions
├── README.md                     # Project documentation
├── index.html                    # Homepage template
└── search.json                   # Site search functionality
```

### Content Directories
```
├── _authors/           # Author profiles (sebas.md, axell.md, edalorzo.md)
├── _bibliography/      # Academic references (references.bib, factoring.bib)
├── _data/             # Site configuration (settings.yml)
├── _drafts/           # Unpublished posts
├── _pages/            # Static pages (about, contact, FAQ, etc.)
├── _posts/            # Published blog articles (25+ mathematics articles)
├── blog/              # Blog index and pagination
├── documentos/        # Document downloads
└── images/            # Site images and graphics
```

### Theme & Layout
```
├── _includes/         # Reusable template components
├── _layouts/          # Page templates (default, post, page, author)
├── _sass/             # Organized SCSS stylesheets
│   ├── 0-settings/    # Variables, mixins, color schemes
│   ├── 3-modules/     # Component styles
│   ├── 4-layouts/     # Layout-specific styles
│   └── 5-theorems/    # Mathematical theorem styling
└── js/                # JavaScript functionality
```

### Key Configuration Files

**`_config.yml`**: Main Jekyll configuration
- Site metadata and URL configuration
- Plugin configuration for academic features
- Collections setup (pages, posts, authors)
- Bibliography and citation settings
- Timezone: America/Costa_Rica

**`_data/settings.yml`**: Site-specific settings (142 lines)
- Navigation menu structure
- Logo and branding
- Commission/committee organization (COFOMA, COCODI)
- Social media and contact information

**`Gemfile`**: Ruby dependencies (11 gems)
- Core Jekyll and academic plugins
- Platform-specific gems (tzinfo-data)

## GitHub Actions Workflow

**File**: `.github/workflows/jekyll.yml`
**Trigger**: Push to `main` branch or manual dispatch
**Process**:
1. Checkout code
2. Setup Ruby with bundler caching
3. Configure GitHub Pages
4. Build with Jekyll (`bundle exec jekyll build`)
5. Upload build artifact
6. Deploy to GitHub Pages

**Build Environment**: `ubuntu-latest`
**Ruby Setup**: Uses `.ruby-version` file automatically
**Cache**: Bundler gems cached automatically (increment `cache-version` to refresh)

## Content Management

### Academic Features
- **Citations**: Uses jekyll-scholar with APA style
- **Bibliography**: BibTeX files in `_bibliography/`
- **Figures**: Jekyll-figure plugin for academic figure management
- **Math**: LaTeX support for mathematical expressions
- **Diagrams**: Mermaid.js integration for technical diagrams

### Content Types
- **Blog Posts**: Markdown files in `_posts/` with YAML frontmatter
- **Authors**: Individual author profiles with bio and articles
- **Pages**: Static content (organization, FAQ, contact)
- **Commissions**: COFOMA (mathematics) and COCODI (digital content)

### Post Structure
```yaml
---
layout: post
title: Article Title
description: Brief description
date: YYYY-MM-DDTHH:MM:SS-06:00
author: author_id
image: '/images/image.png'
tags: [tag1, tag2]
commissions: [cofoma, cocodi]
featured: true/false
toc: true/false  # Table of contents
---
```

## Development Workflow

### Making Changes
1. **Always run build first** to ensure clean starting state
2. **Make minimal changes** to content or configuration
3. **Test locally** with `bundle exec jekyll serve`
4. **Verify build** with `bundle exec jekyll build`
5. **Check generated output** in `_site/` directory

### Adding Content
- **Blog posts**: Add to `_posts/` following naming convention `YYYY-MM-DD-title.md`
- **Images**: Place in `images/` directory
- **Citations**: Add references to `_bibliography/references.bib`
- **Authors**: Create new file in `_authors/` if needed

### CSS/Style Changes
- **Main styles**: Edit files in `_sass/` subdirectories
- **Variables**: Modify `_sass/0-settings/_variables.scss`
- **Layout-specific**: Use appropriate subdirectory in `_sass/`

## Validation & Testing

### Pre-commit Validation
1. **Build test**: `bundle exec jekyll build` (should complete in ~2-3 seconds)
2. **Serve test**: `bundle exec jekyll serve` (should start without errors)
3. **Link validation**: Check internal links in generated `_site/`
4. **Content validation**: Verify bibliography references resolve correctly

### GitHub Actions Validation
- **Automatic**: Triggered on push to `main`
- **Manual**: Use "Actions" tab → "Despliega el sitio en GitHub Pages" → "Run workflow"
- **Logs**: Check workflow execution for build errors
- **Artifacts**: Build artifact uploaded automatically

## File Exclusions

**`.gitignore` contents**:
```
_site
.sass-cache
.jekyll-cache
.jekyll-metadata
.DS_Store
```

**Additional exclusions for PRs**:
- `vendor/` (bundle dependencies)
- `.bundle/` (bundle configuration)

## Trust These Instructions

These instructions have been validated by:
- ✅ Successful local build and serve
- ✅ Dependency installation verification
- ✅ GitHub Actions workflow analysis
- ✅ Complete repository structure exploration
- ✅ Academic plugin functionality testing

**Search only when**: Instructions are incomplete, outdated, or you encounter errors not covered here. Start with the documented build process and troubleshooting steps before exploring.

## Quick Reference Commands

```bash
# Setup (one-time)
bundle config set --local path 'vendor/bundle'
bundle install

# Development
bundle exec jekyll build                    # Build site
bundle exec jekyll serve --host 0.0.0.0    # Serve locally
bundle exec jekyll build --incremental     # Faster incremental builds

# Troubleshooting
bundle clean                               # Clean bundle cache
rm -rf _site/ .jekyll-cache/              # Clean Jekyll cache
bundle install --redownload               # Re-download gems
```