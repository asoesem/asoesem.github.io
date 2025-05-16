require 'cgi' # For HTML escaping

module Jekyll
  # Stores display names for block types, matching your SCSS.
  BLOCK_TYPE_NAMES = {
    'theorem'    => 'Teorema',
    'postulate'  => 'Postulado',
    'corollary'  => 'Corolario',
    'lemma'      => 'Lema',
    'axiom'      => 'Axioma',
    'definition' => 'Definición',
    'proof'      => 'Prueba' # Spanish for Proof
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
      converter = site.find_converter_instance(Jekyll::Converters::Markdown)

      # Initialize counters and reference data store if they don't exist on the site object
      site.config['math_block_counters'] ||= Hash.new(0)
      site.config['math_block_references'] ||= {}

      # Increment counter for this block type and get current number
      current_number = (site.config['math_block_counters'][@block_type] += 1)
      display_block_name = BLOCK_TYPE_NAMES[@block_type] || @block_type.capitalize

      # Store reference data if a label is provided
      if @label_param && !@label_param.strip.empty?
        clean_label = @label_param.strip
        site.config['math_block_references'][clean_label] = {
          'type_key'    => @block_type, # e.g., 'theorem'
          'name'        => display_block_name, # e.g., 'Teorema'
          'number'      => current_number,
          'title_param' => @title_param ? @title_param.strip : nil, # The user-provided title string
          'id'          => clean_label # The label used for the HTML id
        }
      end

      raw_block_content = super(context) # Renders content between {% tag %} and {% endtag %}
      processed_content = converter.convert(raw_block_content.strip).strip

      # Construct the title string (e.g., "Teorema 1. Título Opcional")
      block_title_str = ""
      escaped_user_title = @title_param ? CGI.escapeHTML(@title_param.strip) : ""

      if @block_type == "proof"
        if !escaped_user_title.empty?
          # If user provides a title for a proof, it's typically the subject.
          # Your SCSS for .proof.has-subject .math-block-title::before had content: "";
          # This implies the title attribute itself is the full intended title.
          block_title_str = escaped_user_title # e.g., User writes title="Prueba del Teorema de Pitágoras"
        else
          block_title_str = "#{display_block_name}." # "Prueba."
        end
      else
        block_title_str = "#{display_block_name} #{current_number}."
        if !escaped_user_title.empty?
          block_title_str += " #{escaped_user_title}"
        end
      end

      title_span = "<span class=\"math-block-title\">#{block_title_str}</span>"

      id_attribute = ""
      if @label_param && !@label_param.strip.empty?
        id_attribute = " id=\"#{CGI.escapeHTML(@label_param.strip)}\""
      end
      
      css_class = "math-block #{@block_type}"
      # Add 'has-subject' if a proof has a specific title provided by the user
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
        
        # Link text: "Teorema 1", "Definición 2", etc.
        link_text = "#{ref_data['name']} #{ref_data['number']}"
        href_id = CGI.escapeHTML(ref_data['id']) # id is the clean label

        "<a href=\"##{href_id}\">#{CGI.escapeHTML(link_text)}</a>"
      else
        Jekyll.logger.warn "Math Reference Warning:", "Label '#{@label_arg}' not found for math_ref tag."
        # Return a user-friendly message in Spanish
        "[Referencia a '#{CGI.escapeHTML(@label_arg)}' no encontrada]"
      end
    end
  end

  # Register each specific math block type
  BLOCK_TYPE_NAMES.keys.each do |block_type|
    Liquid::Template.register_tag(block_type, MathBlockTag)
  end

  # Register the MathRefTag
  Liquid::Template.register_tag('math_ref', MathRefTag)
end