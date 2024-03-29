class PromotionsController < ApplicationController
  def index
    @promotions = PromotionDecorator.decorate_collection(
      Promotion.includes(:image_size, :day_of_month_promotion_rules).all
    )

    @page_title = "全てのサービスデー一覧"
  end

  def show
    @promotion = PromotionDecorator.decorate(Promotion.find(params[:id]))

    @page_title = "#{@promotion.title}（#{@promotion.shop.name}）"

    if params[:amp]
      render 'show-amp', layout: 'application-amp'
    else
    end
  end
end
