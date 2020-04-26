class AddProcessAtToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :process_at, :datetime
  end
end
