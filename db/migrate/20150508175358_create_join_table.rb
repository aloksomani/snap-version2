class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :profiles, :cameras do |t|
      t.index [:profile_id, :camera_id]
      t.index [:camera_id, :profile_id]
    end
  end
end
