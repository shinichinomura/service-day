class PromotionsController < ApplicationController
  def index
    @promotions = Promotion.all

    @page_title = "全てのサービスデー一覧"
  end

  def show
    @promotion = Promotion.find(params[:id])

    @page_title = "#{@promotion.title}（#{@promotion.shop.name}）"

    if params[:amp]
      render 'show-amp', layout: 'application-amp'
    else
    end
  end
end
