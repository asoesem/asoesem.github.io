require 'cgi'
require 'jekyll'

# Este plugin define etiquetas personalizadas para crear referenciar bloques matemáticos.
module Jekyll
  # Almacena nombres para mostrar para los tipos de bloques, que coinciden con su SCSS.
  BLOCK_TYPE_NAMES = {
    'theorem'    => 'Teorema',
    'postulate'  => 'Postulado',
    'corollary'  => 'Corolario',
    'lemma'      => 'Lema',
    'axiom'      => 'Axioma',
    'definition' => 'Definición',
    'proof'      => 'Demostración'
  }.freeze

  class MathBlockTag < Liquid::Block
    def initialize(tag_name, markup, tokens)
      super
      @markup = markup.strip
      @block_type = tag_name # 'theorem', 'definition', etc.

      # Expresión regular para capturar el título (debe estar entre comillas) y la etiqueta (puede no estar entre comillas)
      @title_param = @markup.match(/title=(?:"([^"]*)"|'([^']*)')/i)&.captures&.compact&.first
      @label_param = @markup.match(/label=(?:"([^"]*)"|'([^']*)'|([a-zA-Z0-9_-]+))/i)&.captures&.compact&.first
    end

    def render(context)
      site = context.registers[:site]
      page = context.environments.first['page'] # Obtener el objeto de la página/artículo actual
      converter = site.find_converter_instance(Jekyll::Converters::Markdown)

      page['block_counters'] ||= Hash.new(0)
      site.config['block_references'] ||= {}

      current_number = (page['block_counters'][@block_type] += 1)
      display_block_name = BLOCK_TYPE_NAMES[@block_type] || @block_type.capitalize

      if @label_param && !@label_param.strip.empty?
        clean_label = @label_param.strip
        if site.config['block_references'].key?(clean_label)
          Jekyll.logger.warn "Advertencia de etiqueta:", "La etiqueta '#{clean_label}' ya está en uso."
        end
        site.config['block_references'][clean_label] = {
          'type_key'    => @block_type,
          'name'        => display_block_name,
          'number'      => current_number,
          'title_param' => @title_param ? @title_param.strip : nil,
          'id'          => clean_label,
          'page_path'   => page['path']
        }
      end

      raw_block_content = super(context)
      processed_content = converter.convert(raw_block_content.strip).strip

      block_title_str = ""
      escaped_user_title = @title_param ? CGI.escapeHTML(@title_param.strip) : ""

      if @block_type == "proof"
        if !escaped_user_title.empty?
          block_title_str = escaped_user_title
        else          
          block_title_str = "#{display_block_name}"
        end
      else
        # Para teorema, definición, axioma, etc.
        base_name_and_number = "#{display_block_name} #{current_number}"
        if !escaped_user_title.empty?
          block_title_str = "#{base_name_and_number}: #{escaped_user_title}" # e.g., "Teorema 1: Título Opcional"
        else
          block_title_str = "#{base_name_and_number}" # e.g., "Teorema 1."
        end
      end

      title_span = "<span class=\"math-block-title\">#{block_title_str}</span>"

      id_attribute = ""
      if @label_param && !@label_param.strip.empty?
        id_attribute = " id=\"#{CGI.escapeHTML(@label_param.strip)}\""
      end
      
      css_class = "math-block #{@block_type}"
      if @block_type == "proof" && @title_param && !@title_param.strip.empty?
         css_class += " has-subject"
      end

      output = <<~HTML
        <div class="#{css_class}"#{id_attribute}>
          #{title_span}
          <div class="math-block-body">
            #{processed_content}
          </div>
        </div>
      HTML
      output.strip
    end
  end

  # Esta etiqueta se utiliza para crear un enlace a un bloque de matemáticas mediante su etiqueta.
  class MathBlockRefTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
      @label_arg = markup.strip # Este es el 'label-id' de {% block_ref label-id %}
      if @label_arg.empty?
        raise SyntaxError, "No se proveyó etiqueta para el block_ref. Uso: {% block_ref tu-etiqueta %}"
      end
      unless @label_arg.match?(/^[a-zA-Z0-9_-]+$/)
        raise SyntaxError, "Caracter inválido en la etiqueta para block_ref tag: '#{@label_arg}'. Utilice letras, números, guiones o guiones bajos."
      end
    end

    def render(context)
      site = context.registers[:site]
      references = site.config['block_references']

      if references && references.key?(@label_arg)
        ref_data = references[@label_arg]
        
        link_text = "#{ref_data['name']} #{ref_data['number']}"
        href_id = CGI.escapeHTML(ref_data['id']) 

        "<a href=\"##{href_id}\">#{CGI.escapeHTML(link_text)}</a>"
      else
        Jekyll.logger.warn "Advertencia de referencia de bloque:", "No se encontró la etiqueta '#{@label_arg}' para block_ref tag."
        "[Referencia a '#{CGI.escapeHTML(@label_arg)}' no encontrada]"
      end
    end
  end

  BLOCK_TYPE_NAMES.keys.each do |block_type|
    Liquid::Template.register_tag(block_type, MathBlockTag)
  end

  Liquid::Template.register_tag('block_ref', MathBlockRefTag)
end