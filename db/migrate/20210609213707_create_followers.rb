class CreateFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :followers do |t|
      t.integer :fan_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
