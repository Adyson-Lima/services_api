class Api::V1::ServicesController < ApplicationController

  before_action :set_service, only: %i[show] #show update destroy

  def index
    @services =Service.all 
    render json: @services
  end

  def show
    render json: @service
  end

private

def set_service
  @service = Service.find(params[:id])
end

def service_params
  params.require(:service).permit(:name, :value)
end

end