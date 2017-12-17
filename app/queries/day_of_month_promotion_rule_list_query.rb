class DayOfMonthPromotionRuleListQuery
  def all_list
    DayOfMonthPromotionRule.
      includes(promotion: [:shop]).
      order(:day, :id)
  end
end
