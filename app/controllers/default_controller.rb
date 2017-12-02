class DefaultController < ApplicationController
  def index
    @promotions = PromotionListQuery.new.day_of_month_list(params[:day] || Date.today.day)
  end
end
