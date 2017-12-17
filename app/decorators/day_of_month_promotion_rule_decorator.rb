class DayOfMonthPromotionRuleDecorator < Draper::Decorator
  delegate_all

  decorates_association :promotion

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def heading(rule_list, container: :div, container_class: :day_of_month)
    rule_list.select{|r| r.day == object.day}.first.id == object.id ?
      h.content_tag(container, "毎月#{object.day}日のサービスデー", class: container_class) :
      ''
  end
end
