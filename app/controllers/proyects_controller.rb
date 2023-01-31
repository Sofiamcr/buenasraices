class ProyectsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @proyects = Proyect.all
  end

  def new
    @proyect = Proyect.new
  end

  def create
    @proyect = Proyect.new(proyect_params)
    @proyect.save
    redirect_to proyects_path
  end

  private

  def proyect_params
    params.require(:proyect).permit(:name, :description, :category, :location)
  end

end
