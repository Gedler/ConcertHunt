class CreateAttendingConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :attending_concerts do |t|
      t.integer :fan_id
      t.integer :concert_id

      t.timestamps
    end
  end
end
