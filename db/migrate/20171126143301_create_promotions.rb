class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.integer :shop_id, limit: 5, null: false
      t.string :title, null: false, limit: 64
      t.string :url, limit: 256
      t.string :summary, null: false, limit: 512
      t.text :description, null: false
      t.string :image_url, limit: 256

      t.timestamps
    end

    add_foreign_key :promotions, :shops, on_delete: :cascade, on_update: :cascade
  end
end
