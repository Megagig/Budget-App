class CategoriesController < ApplicationController
  before_action :set_category, only: %i[edit update destroy]

  def index
    @categories = Category.includes(:details, :user).where(user: current_user)
  end

  def new
    @category = current_user.categories.build
  end

  def create
    @category = current_user.categories.new(category_params)

    if @category.save
      redirect_to categories_path, notice: 'Category was successfully created.'
    else
      render :new
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :icon_url)
  end
end
