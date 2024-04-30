class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  scope :with_content_type, lambda { |content_type|
    return if content_type.nil?

    where(content_type:)
  }
end
