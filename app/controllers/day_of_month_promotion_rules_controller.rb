class DayOfMonthPromotionRulesController < ApplicationController
  def index
    @promotion_rules = DayOfMonthPromotionRuleDecorator.decorate_collection(
      DayOfMonthPromotionRuleListQuery.new.all_list
    )

    @page_title = "毎月特定日のサービスデー一覧"
  end
end
