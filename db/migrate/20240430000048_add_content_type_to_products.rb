class AddContentTypeToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :content_type, :string
  end
end
