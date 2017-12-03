class SitemapsController < ApplicationController
  def promotion
    @promotions = Promotion.all
  end
end
