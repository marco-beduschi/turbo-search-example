class BannerImage
  def initialize(product)
    @product = product
  end

  def url
    @product.image_url || 'https://dummyimage.com/460x215/33414f/64748b'
  end

  def alt
    "#{@product.name} banner"
  end
end
