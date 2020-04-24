class AddMemberIdToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :member_id, :string
  end
end
