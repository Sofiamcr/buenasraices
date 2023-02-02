class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @proyects = Proyect.where(category_id: params[:id])
  end


end
