class Category < ApplicationRecord
  has_and_belongs_to_many :products

  scope :with_name, lambda { |name|
    where('name LIKE ?', "%#{name}%")
  }
end
