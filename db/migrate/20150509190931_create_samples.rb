class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :photo
      t.references :user, index: true, foreign_key: true
      t.references :camera, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
