class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.references :camera, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
