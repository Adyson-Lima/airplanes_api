class Api::V1::AirplanesController < ApplicationController
  
  before_action :set_airplane, only: %i[show update destroy]
  
  def index
    @airplanes = Airplane.all
    render json: @airplanes
  end
  
private

def set_airplane
  @airplane = Airplane.find(params[:id])
end

def airplane_params
  params.require(:airplane).permit(:name, :description, :manufacturer)
end
  
end
