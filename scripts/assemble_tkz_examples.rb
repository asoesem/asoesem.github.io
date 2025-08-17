#!/usr/bin/env ruby
# frozen_string_literal: true

# Assemble js/tkz-examples.json from per-example .tex files under tkz-examples/
# Each .tex file must contain YAML front matter followed by LaTeX content.
# Expected front matter keys: id (String), title (String), description (String, optional),
# keywords (Array[String], optional), tags (Array[String], optional), image (String, optional),
# caption (String, optional), image_alt (String, optional), sort (Integer, optional)
# The body becomes the `latex` string in the JSON.

require 'yaml'
require 'json'
require 'pathname'
require 'date'

ROOT = Pathname.new(__dir__).parent.expand_path
PREFERRED_DIR = ROOT.join('concites', 'tikz-euclide')
FALLBACK_DIR  = ROOT.join('tkz-examples')
SRC_DIR = if PREFERRED_DIR.directory?
  PREFERRED_DIR
else
  FALLBACK_DIR
end
OUT_FILE = ROOT.join('js', 'tkz-examples.json')

unless SRC_DIR.directory?
  warn "[assemble_tkz_examples] No existe el directorio fuente ni en #{PREFERRED_DIR} ni en #{FALLBACK_DIR}."
  exit 1
end

examples = []
ids = {}
errors = []

Dir.glob(SRC_DIR.join('**', '*.tex')).sort.each do |path|
  content = File.read(path)
  if content !~ /^---\s*\n/m
    errors << "#{path}: falta el front matter YAML (---)."
    next
  end

  # Split front matter and body
  parts = content.split(/^---\s*$\n/, 3) # possible leading, start, rest
  if parts.length < 3
    errors << "#{path}: estructura de front matter inválida."
    next
  end
  # parts[0] is anything before first '---' (usually empty), parts[1] is YAML, parts[2] is body (may include trailing newlines)
  yaml_text = parts[1]
  body = parts[2].to_s

  begin
    meta = YAML.safe_load(yaml_text, permitted_classes: [Date, Time], aliases: false) || {}
  rescue => e
    errors << "#{path}: error parseando YAML: #{e.message}"
    next
  end

  # Normalize and validate
  id = meta['id']&.to_s&.strip
  title = meta['title']&.to_s&.strip
  description = meta['description']&.to_s&.strip
  keywords = meta['keywords'] || []
  tags = meta['tags'] || []
  image = meta['image']&.to_s&.strip
  caption = meta['caption']&.to_s&.strip
  image_alt = meta['image_alt']&.to_s&.strip
  sort_val = meta['sort']

  if id.nil? || id.empty?
    errors << "#{path}: 'id' es requerido."
    next
  end
  if ids.key?(id)
    errors << "#{path}: id duplicado '#{id}' (también en #{ids[id]})."
    next
  end
  ids[id] = path

  if title.nil? || title.empty?
    errors << "#{path}: 'title' es requerido."
    next
  end

  keywords = Array(keywords).map { |k| k.to_s }.reject(&:empty?)
  tags = Array(tags).map { |t| t.to_s }.reject(&:empty?)

  # Ensure each example has a canonical tag "ejemploN" (sin espacios) y configurar imagen por defecto
  begin
    num = nil
    num_str = nil
    cat = nil
    basename = File.basename(path.to_s, '.tex')

    # Detectar número de ejemplo y categoría a partir del nombre del archivo preferentemente
    if basename =~ /\Atkz-([a-z0-9_-]+)-ejemplo-(\d+)\z/i
      cat = Regexp.last_match(1).downcase
      num_str = Regexp.last_match(2)
      num = num_str.to_i
    else
      # Fallback: intentar desde el id y/o el nombre
      if id =~ /ejemplo-(\d+)/i
        num_str = Regexp.last_match(1)
        num = num_str.to_i
      elsif basename =~ /ejemplo-(\d+)/i
        num_str = Regexp.last_match(1)
        num = num_str.to_i
      end
      if basename =~ /\Atkz-([a-z0-9_-]+)-/i
        cat = Regexp.last_match(1).downcase
      end
    end

    if num && num > 0
      # Normalizar etiqueta sin espacios: "ejemploN"
      canonical_tag = "ejemplo#{num}"
      # Remover variantes como "ejemplo N", "ejemplo-0N", "EJEMPLO0N" etc.
      tags.reject! do |t|
        t_s = t.to_s.strip
        t_s.match?(/\A\s*ejemplo\s*-?\s*0*#{num}\s*\z/i) || t_s.match?(/\A\s*ejemplo0*#{num}\s*\z/i)
      end
      tags << canonical_tag
    end

    # Configurar ruta de imagen canónica si se puede inferir (siempre, para cumplir el requisito)
    if cat && num_str
      num2 = num_str.rjust(2, '0')
      canonical_image = "/images/cientec/tkz-#{cat}/ejemplo-#{num2}.png"
    end
  rescue => _e
    # Si falla la detección, continuamos sin forzar
  end

  latex = body.strip
  if latex.empty?
    errors << "#{path}: no se encontró contenido LaTeX en el cuerpo."
    next
  end

  example = {
    id: id,
    title: title,
    keywords: keywords,
    tags: tags,
    description: description,
    latex: latex
  }
  if defined?(canonical_image) && canonical_image && !canonical_image.empty?
    example[:image] = canonical_image
  elsif image && !image.empty?
    example[:image] = image
  end
  example[:caption] = caption unless caption.nil? || caption.empty?
  example[:image_alt] = image_alt unless image_alt.nil? || image_alt.empty?

  # Normalize optional numeric sort
  sort_num = nil
  if sort_val.is_a?(Numeric)
    sort_num = sort_val.to_i
  elsif sort_val.is_a?(String) && sort_val.strip =~ /\A-?\d+\z/
    sort_num = sort_val.strip.to_i
  end
  example[:sort] = sort_num unless sort_num.nil?

  examples << example
end

if errors.any?
  warn "\nSe encontraron errores al procesar ejemplos:" 
  errors.each { |e| warn " - #{e}" }
  warn "\nNo se generó #{OUT_FILE} debido a errores."
  exit 1
end

# Sort by optional sort (asc), then by title as tie-breaker
examples.sort_by! { |e| [e[:sort].nil? ? 1_000_000 : e[:sort], e[:title].downcase] }

json = JSON.pretty_generate(examples)
OUT_FILE.dirname.mkpath unless OUT_FILE.dirname.directory?
File.write(OUT_FILE, json)

puts "[assemble_tkz_examples] Generado #{OUT_FILE} con #{examples.size} ejemplo(s)."
