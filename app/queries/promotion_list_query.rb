class PromotionListQuery
  def day_of_month_list(day)
    Promotion.joins(:day_of_month_promotion_rules)
      .includes(:shop)
      .where(day_of_month_promotion_rules: { day: day })
  end
end
