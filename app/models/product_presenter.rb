class ProductPresenter < SimpleDelegator
  def self.content_types
    Product.select(:content_type).distinct.map(&:content_type)
  end

  def image_url
    __getobj__.image_url || 'https://dummyimage.com/460x215/33414f/64748b'
  end

  def image_alt
    "#{name} banner"
  end
end
