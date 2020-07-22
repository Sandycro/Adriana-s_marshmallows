class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @product = Product.new
  end

private

  def category_params
    params.require(:article).permit(:name, :photo)
  end
end
