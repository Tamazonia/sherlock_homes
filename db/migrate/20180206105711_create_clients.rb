class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :first_name
      t.string :address
      t.integer :postal_code
      t.string :place
      t.string :phone1
      t.string :phone2
      t.string :email
      t.date :date_of_birth
      t.datetime :follow_up
      t.string :remarks
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
