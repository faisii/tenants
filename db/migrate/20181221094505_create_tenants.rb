class CreateTenants < ActiveRecord::Migration[5.1]
  def change
    create_table :tenants do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.integer :phone
      t.integer :national_id
      t.string :pin
      t.string :county
      t.string :location
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
