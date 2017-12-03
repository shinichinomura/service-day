class DefaultController < ApplicationController
  def index
    @promotions = PromotionDecorator.decorate_collection(
      PromotionListQuery.new.day_of_month_list(params[:day] || Date.today.day)
    )
  end
end
