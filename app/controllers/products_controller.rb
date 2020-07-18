class ProductsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
  end

  def create
    @product = Product.new(product_params)
    # we need `category_id` to associate product with corresponding category
    @category = Category.find(params[:category_id])
    @product.category = @category
    if @product.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end
end
