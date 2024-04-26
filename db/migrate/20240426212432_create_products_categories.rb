class CreateProductsCategories < ActiveRecord::Migration[7.1]
  def change
    create_join_table :products, :categories
  end
end
