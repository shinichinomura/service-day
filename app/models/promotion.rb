class Promotion < ApplicationRecord
  belongs_to :shop

  has_many :day_of_month_promotion_rules, -> {
    order(:day)
  }

  has_one :image_size,
    primary_key: :image_url,
    foreign_key: :url

  # 割引適用ルールの文字列表現
  #
  # 例: 毎月5・15・25日
  def rule_in_text
    "毎月" + day_of_month_promotion_rules.map(&:day).join('・') + "日"
  end
end
