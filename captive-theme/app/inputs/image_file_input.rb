class ImageFileInput < Formtastic::Inputs::FileInput
  def to_html
    input_wrapping do
      label_html <<
        builder.file_field(method, input_html_options) <<
        image_preview_html
    end
  end

  def image_preview_html
    if object.send(method)&.attached?
      builder.template.image_tag(object.send(method), image_preview_html_options)
    else
      ''
    end
  end

  def input_html_options
    {
      accept: 'image/*',
    }.merge(super)
  end

  def image_preview_html_options
    options[:image_preview_html] ||= { style: 'max-width: 100%;' }
  end
end
