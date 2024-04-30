class ProductsController < ApplicationController
  def index
    @products = Product
                .with_name(params[:q])
                .with_content_type(params[:content_type])
                .with_categories(params[:category])
                .with_price_up_to(params[:price])
    @categories = Category.all
  end
end
