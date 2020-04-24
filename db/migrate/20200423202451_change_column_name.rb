class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :lists, :time_mode, :meridies
  end
end
