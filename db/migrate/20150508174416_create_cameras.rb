class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.string :brand
      t.string :model
      t.float :price
      t.string :resolution
      t.string :zoom_range
      t.string :product_photo
      t.text :description
      t.integer :portability

      t.timestamps null: false
    end
  end
end
