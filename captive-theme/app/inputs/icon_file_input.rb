class IconFileInput < ImageFileInput
  def image_preview_html_options
    options = super
    options[:class] ||= ""
    options[:class] += " icon-preview"
    options
  end
end
