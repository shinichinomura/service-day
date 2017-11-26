class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name, null: false, limit: 64, index: { unique: true }
      t.string :url, limit: 256

      t.timestamps
    end
  end
end
