class Api::V1::ServicesController < ApplicationController

  before_action :set_service, only: %i[show update] #show update destroy

  def index
    @services =Service.all 
    render json: @services
  end

  def show
    render json: @service
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      render json: @service, status: :created, location: api_v1_service_url(@service)
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  def update
    if @service.update(service_params)
      render json: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

private

def set_service
  @service = Service.find(params[:id])
end

def service_params
  params.require(:service).permit(:name, :value)
end

end