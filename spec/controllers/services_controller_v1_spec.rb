require 'rails_helper'

RSpec.describe Api::V1::ServicesController, type: :controller do

  before{@service = Service.create(name: 'Backup', value: 'R$100,00')}

  describe 'GET /api/v1/services' do
    it 'Consegue listar todos os services e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/services/id' do
    it 'Consegue listar um service especifico e retornar status 200?' do
      get :show, params: {id: @service.id}
      expect(response.body).to include_json(name: 'Backup')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/services' do
    it 'Consegue criar um service e retornar status 201?' do
      post :create, params: {service: {name: 'instalação de ssd', value: 'RS200,00'}, format: :json}
      expect(response.body).to include_json(name: 'instalação de ssd')
      expect(response).to have_http_status(201)
    end
  end

end