class CategoryFiltersController < ApplicationController
  def create
    @categories = Category.with_name(params[:q])
  end
end
