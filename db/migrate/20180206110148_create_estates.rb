class CreateEstates < ActiveRecord::Migration[5.1]
  def change
    create_table :estates do |t|
      t.string :type
      t.string :details
      t.string :street
      t.integer :postal_code
      t.string :place

      t.timestamps
    end
  end
end
