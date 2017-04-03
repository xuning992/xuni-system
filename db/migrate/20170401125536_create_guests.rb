class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.integer :comment_id

      t.timestamps null: false
    end
  end
end
