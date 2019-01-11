class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :estate
      t.string :plot_no
      t.string :location
      t.integer :units_on_plot
      t.integer :field_officer
      t.string :plot_name
      t.string :town
      t.decimal :comm

      t.timestamps
    end
  end
end
