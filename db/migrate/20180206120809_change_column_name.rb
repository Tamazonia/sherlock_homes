class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :estates, :type, :estate_type
  end
end
