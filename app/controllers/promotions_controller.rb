class PromotionsController < ApplicationController
  def show
    @promotion = Promotion.find(params[:id])

    @page_title = "#{@promotion.title}（#{@promotion.shop.name}）"

    if params[:amp]
      render 'show-amp', layout: 'application-amp'
    else
    end
  end
end
