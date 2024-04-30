class ProductPresenter < SimpleDelegator
  def image_url
    __getobj__.image_url || 'https://dummyimage.com/460x215/33414f/64748b'
  end

  def image_alt
    "#{name} banner"
  end
end
