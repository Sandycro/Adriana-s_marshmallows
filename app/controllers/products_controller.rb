class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :new, :create]

  def show
    # @category = Category.find(params[:category_id])
    @product = Product.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @product = Product.new
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

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @category = Category.find(params[:category_id])
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @category = @product.category
    @product.destroy
    redirect_to category_path(@product.category)
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :rating, photos: [])
  end
end
