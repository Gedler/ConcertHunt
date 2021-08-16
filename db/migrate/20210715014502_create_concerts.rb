class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :venue
      t.string :location
      t.string :image
      t.string :date
      t.integer :price
      t.integer :artist_id

      t.timestamps
    end
  end
end
