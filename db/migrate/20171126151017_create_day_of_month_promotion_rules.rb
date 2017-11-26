class CreateDayOfMonthPromotionRules < ActiveRecord::Migration[5.1]
  def change
    create_table :day_of_month_promotion_rules do |t|
      t.integer :promotion_id, null: false, limit: 5
      t.integer :day, null: false

      t.timestamps
    end

    add_foreign_key :day_of_month_promotion_rules, :promotions, on_delete: :cascade, on_update: :cascade
    add_index :day_of_month_promotion_rules, [:promotion_id, :day], unique: true
  end
end
