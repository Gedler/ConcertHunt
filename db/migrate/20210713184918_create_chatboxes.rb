class CreateChatboxes < ActiveRecord::Migration[6.1]
  def change
    create_table :chatboxes do |t|
      t.integer :fan_id
      t.string :comment
      t.string :fan_name

      t.timestamps
    end
  end
end
