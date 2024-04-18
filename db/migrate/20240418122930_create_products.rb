class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :full_price, precision: 12, scale: 2
      t.decimal :price, precision: 12, scale: 2

      t.timestamps
    end
  end
end
