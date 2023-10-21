class Api::V1::AirplanesController < ApplicationController
  
  before_action :set_airplane, only: %i[show update destroy]
  
  def index
    @airplanes = Airplane.all
    render json: @airplanes
  end
  
  def show
    render json: @airplane
  end
  
  def create
    @airplane = Airplane.new(airplane_params)
    if @airplane.save
      render json: @airplane, status: :created, 
      location: api_v1_airplane_url(@airplane)
    else
      render json: @airplane.errors, status: :internal_server_error
    end
  end
  
  def update
    if @airplane.update(airplane_params)
      render json: @airplane
    else
      render json: @airplane.errors, status: :internal_server_error
    end
  end
  
  def destroy
    @airplane.destroy
  end
  
private

def set_airplane
  @airplane = Airplane.find(params[:id])
end

def airplane_params
  params.require(:airplane).permit(:name, :description, :manufacturer)
end
  
end
