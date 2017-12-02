class PromotionsController < ApplicationController
  def show
    @promotion = Promotion.find(params[:id])

    @page_title = "#{@promotion.title}（#{@promotion.shop.name}）"
  end
end
