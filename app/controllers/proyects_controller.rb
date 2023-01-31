class ProyectsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @proyects = Proyect.all
  end
end
