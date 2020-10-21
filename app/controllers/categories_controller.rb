class CategoriesController < ApplicationController
  def index
    @categorys = Category.all
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      @categorys = Category.all
      render :index
    end
  end


  private

  def category_params
    params.require(:category).permit(:name, :is_valid)
  end
end
