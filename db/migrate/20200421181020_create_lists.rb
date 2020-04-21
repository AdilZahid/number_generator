class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :pin_code
      t.string :time_mode

      t.timestamps
    end
  end
end
