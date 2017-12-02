module ApplicationHelper
  def title(page_title: "飲食店や映画館をおトクに利用しよう")
    "サービスデイ - #{page_title}"
  end

  def render_css(path)
    raw Sass::Engine.for_file("#{Rails.root}/app/assets/stylesheets/#{path}", {
      load_paths: ["#{Rails.root}/app/assets/stylesheets"],
        style: :compressed
    }).to_css
  end

  def image_set_tag(source, srcset: {}, options: {}, amp: false)
    srcset = srcset.map { |src, size| "#{path_to_image(src)} #{size}" }.join(', ')

    tag = image_tag(source, options.merge(srcset: srcset))

    if amp
      tag.sub(/^<img/, '<amp-img').html_safe
    else
      tag
    end
  end
end
