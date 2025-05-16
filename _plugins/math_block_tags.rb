# filepath: /_plugins/math_block_tags.rb
require 'cgi' # For HTML escaping

module Jekyll
  class MathBlockTag < Liquid::Block
    def initialize(tag_name, markup, tokens)
      super
      @markup = markup.strip
      @block_type = tag_name # 'theorem', 'definition', etc.

      # Regex to capture title and label, supporting various quote styles or no quotes for label
      # title="Anything here", title='Anything here'
      # label=my-label, label="my-label", label='my-label'
      @title = @markup.match(/title=(?:"([^"]*)"|'([^']*)'|(\S+))/i)&.captures&.compact&.first
      @label = @markup.match(/label=(?:"([^"]*)"|'([^']*)'|([a-zA-Z0-9_-]+))/i)&.captures&.compact&.first
    end

    def render(context)
      site = context.registers[:site]
      converter = site.find_converter_instance(Jekyll::Converters::Markdown)
      
      # Render the content within the block using Liquid, then convert to HTML using Markdown
      raw_block_content = super(context) # Renders content between {% tag %} and {% endtag %}
      processed_content = converter.convert(raw_block_content.strip).strip

      title_span_content = @title && !@title.strip.empty? ? CGI.escapeHTML(@title.strip) : ""
      title_span = "<span class=\"math-block-title\">#{title_span_content}</span>"

      id_attribute = ""
      if @label && !@label.strip.empty?
        id_attribute = " id=\"#{CGI.escapeHTML(@label.strip)}\""
      end
      
      css_class = "math-block #{@block_type}"
      if @block_type == "proof" && @title && !@title.strip.empty?
        css_class += " has-subject"
      end

      # Construct the HTML output
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

  # Register each specific math block type
  # For each type, we just need to tell Liquid its name and that it uses MathBlockTag
  %w[theorem postulate corollary lemma axiom definition proof].each do |block_type|
    Liquid::Template.register_tag(block_type, MathBlockTag)
  end
end