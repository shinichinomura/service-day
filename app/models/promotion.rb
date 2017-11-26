class Promotion < ApplicationRecord
  belongs_to :shop

  has_many :day_of_month_promotion_rules
end
