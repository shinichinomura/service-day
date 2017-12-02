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
end
