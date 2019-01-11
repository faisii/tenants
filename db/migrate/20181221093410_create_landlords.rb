class CreateLandlords < ActiveRecord::Migration[5.1]
  def change
    create_table :landlords do |t|
      t.string :fname
      t.string :oname
      t.string :postal_adress
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
