class CreateImageSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :image_sizes do |t|
      t.string :url, null: false, index: { unique: true }
      t.integer :width, null: false
      t.integer :height, null: false

      t.timestamps
    end
  end
end
