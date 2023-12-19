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

end