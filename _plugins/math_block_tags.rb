require 'cgi' # For HTML escaping
require 'jekyll' # Ensure Jekyll is loaded

# This plugin defines custom Liquid tags for Jekyll to create and reference math blocks.
module Jekyll
  # Stores display names for block types, matching your SCSS.
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

      # Regex to capture title (must be quoted) and label (can be unquoted)
      @title_param = @markup.match(/title=(?:"([^"]*)"|'([^']*)')/i)&.captures&.compact&.first
      @label_param = @markup.match(/label=(?:"([^"]*)"|'([^']*)'|([a-zA-Z0-9_-]+))/i)&.captures&.compact&.first
    end

    def render(context)
      site = context.registers[:site]
      page = context.environments.first['page'] # Get the current page/post object
      converter = site.find_converter_instance(Jekyll::Converters::Markdown)

      page['math_block_counters'] ||= Hash.new(0)
      site.config['math_block_references'] ||= {}

      current_number = (page['math_block_counters'][@block_type] += 1)
      display_block_name = BLOCK_TYPE_NAMES[@block_type] || @block_type.capitalize

      if @label_param && !@label_param.strip.empty?
        clean_label = @label_param.strip
        if site.config['math_block_references'].key?(clean_label)
          Jekyll.logger.warn "Math Label Warning:", "Label '#{clean_label}' is already in use. Labels should be unique across the site for math_ref to work reliably."
        end
        site.config['math_block_references'][clean_label] = {
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
          # User-provided title for a proof is usually the full subject.
          block_title_str = escaped_user_title
        else
          # Default proof title.
          block_title_str = "#{display_block_name}" # e.g., "Prueba."
        end
      else
        # For theorem, definition, axiom, etc.
        base_name_and_number = "#{display_block_name} #{current_number}"
        if !escaped_user_title.empty?
          # Has a user-provided title, use a colon.
          block_title_str = "#{base_name_and_number}: #{escaped_user_title}" # e.g., "Teorema 1: Título Opcional"
        else
          # No user-provided title, use a period.
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

  # This tag is used to create a link to a math block by its label.
  class MathRefTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
      @label_arg = markup.strip # This is the 'label-id' from {% math_ref label-id %}
      if @label_arg.empty?
        raise SyntaxError, "No label provided for math_ref tag. Usage: {% math_ref your-label %}"
      end
      unless @label_arg.match?(/^[a-zA-Z0-9_-]+$/)
        raise SyntaxError, "Invalid characters in label for math_ref tag: '#{@label_arg}'. Use letters, numbers, hyphens, or underscores."
      end
    end

    def render(context)
      site = context.registers[:site]
      references = site.config['math_block_references']

      if references && references.key?(@label_arg)
        ref_data = references[@label_arg]
        
        link_text = "#{ref_data['name']} #{ref_data['number']}"
        href_id = CGI.escapeHTML(ref_data['id']) 

        "<a href=\"##{href_id}\">#{CGI.escapeHTML(link_text)}</a>"
      else
        Jekyll.logger.warn "Math Reference Warning:", "Label '#{@label_arg}' not found for math_ref tag."
        "[Referencia a '#{CGI.escapeHTML(@label_arg)}' no encontrada]"
      end
    end
  end

  BLOCK_TYPE_NAMES.keys.each do |block_type|
    Liquid::Template.register_tag(block_type, MathBlockTag)
  end

  Liquid::Template.register_tag('math_ref', MathRefTag)
end