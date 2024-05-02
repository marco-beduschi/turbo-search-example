class CategoryFiltersController < ApplicationController
  def create
    @categories = Category.with_name(params[:q])

    render 'index', locals: {
      turbo_frame: params[:turbo_frame],
      categories: @categories,
      form: params[:form]
    }
  end
end
