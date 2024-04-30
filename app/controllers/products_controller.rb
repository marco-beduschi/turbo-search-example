class ProductsController < ApplicationController
  def index
    @products = Product
                .with_name(params[:q])
                .with_content_type(params[:content_type])
                .with_categories(params[:category])
    @categories = Category.all
  end
end
