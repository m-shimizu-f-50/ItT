class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :search]


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

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path
    else
      render :edit
    end
  end

  def search
    @categorys = Category.where(is_valid: true)
    @q = @category.notes.all.ransack(params[:q])
    @notes = @q.result(distinct: true).page(params[:page]).per(10)
    @title = @category.name
    render 'notes/index'
  end


  private

  def category_params
    params.require(:category).permit(:name, :is_valid)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
