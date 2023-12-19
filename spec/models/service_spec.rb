require 'rails_helper'

RSpec.describe Service, type: :model do

  before{@service = Service.new}

  describe 'Testes de preenchimento do model Service' do

    it 'name consegue ser preenchido?' do
      @service.name = 'formatação'
      expect(@service.name).to eq('formatação')
    end

    it 'value consegue ser preenchido?' do
      @service.value = ''
      expect(@service.value).to eq('R$120,00')
    end

  end

end