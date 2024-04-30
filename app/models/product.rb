class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  scope :with_content_type, lambda { |content_type|
    return if content_type.nil?

    where(content_type:)
  }

  scope :with_categories, lambda { |category_ids|
                            return if category_ids.nil?

                            joins(:categories).where(categories: { id: category_ids })
                          }

  scope :with_name, lambda { |name|
    where('products.name LIKE ?', "%#{name}%")
  }
end
