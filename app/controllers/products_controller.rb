class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products = @products.with_name(params[:q]) if params[:q].present?
    @products = @products.with_price_up_to(params[:price]) if params[:price].present?
    @products = @products.with_categories(params[:category]) if params[:category].present?
    @products = @products.with_content_type(params[:content_type]) if params[:content_type].present?

    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
end