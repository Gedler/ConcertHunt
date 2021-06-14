class CreateFans < ActiveRecord::Migration[6.1]
  def change
    create_table :fans do |t|
      t.string :user
      t.string :location
      t.string :password_digest

      t.timestamps
    end
  end
end
