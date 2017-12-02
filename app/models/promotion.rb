class Promotion < ApplicationRecord
  belongs_to :shop

  has_many :day_of_month_promotion_rules

  has_one :image_size,
    primary_key: :image_url,
    foreign_key: :url
end
