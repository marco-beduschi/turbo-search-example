class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  scope :with_content_type, lambda { |content_type|
    return if content_type.nil?

    where(content_type:)
  }

  scope :with_categories, lambda { |category_ids|
                            return if category_ids.nil?

                            joins(:categories).where(categories: { id: category_ids }).distinct
                          }

  scope :with_name, lambda { |name|
    where('products.name LIKE ?', "%#{name}%")
  }

  scope :with_price_up_to, lambda { |price|
                             return if price.nil?

                             where('price <= ?', price)
                           }

  def self.content_types
    pluck(:content_type).uniq
  end

  def image
    OpenStruct.new(
      url: image_url || 'https://dummyimage.com/460x215/33414f/64748b',
      alt: "#{name} banner"
    )
  end
end
