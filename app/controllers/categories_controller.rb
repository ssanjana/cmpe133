class CategoriesController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @products = @category.products
  end

  private
    def category_params
    params.require(:category).permit(:name, :image_url)
  end

end
