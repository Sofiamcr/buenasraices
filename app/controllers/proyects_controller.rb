class ProyectsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_category, only: %i[new create]

  def new
    @proyect = Proyect.new
  end

  def create
    @proyect = Proyect.new(proyect_params)
    @proyect.category = @category
    if @proyect.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def proyect_params
    params.require(:proyect).permit(:name, :description, :wood, :location, photos: [])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end
