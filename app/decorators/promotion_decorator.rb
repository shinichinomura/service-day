class PromotionDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def image_size_string
    if image_size.present?
      "#{object.image_size.width}x#{object.image_size.height}"
    else
      ''
    end
  end

  def image_width
    object.image_size.try(:width)
  end

  def image_height
    object.image_size.try(:height)
  end
end
