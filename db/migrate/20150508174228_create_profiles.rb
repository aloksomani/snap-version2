class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :style

      t.timestamps null: false
    end
  end
end
