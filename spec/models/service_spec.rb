require 'rails_helper'

RSpec.describe Service, type: :model do

  before{@service = Service.new}

  describe 'Testes de preenchimento do model Service' do

    it 'name consegue ser preenchido?' do
      @service.name = 'formatação'
      expect(@service.name).to eq('formatação')
    end

    it 'value consegue ser preenchido?' do
      @service.value = 'R$120,00'
      expect(@service.value).to eq('R$120,00')
    end

  end

  describe 'Testes de validacao do model Service' do

    it 'objeto service valido com campos obrigatorios preenchidos?' do
      @service.name = 'troca de memória'
      @service.value = 'R$100,00'
      expect(@service).to be_valid
    end

    it 'objeto service invalido com campos obrigatorios não preenchidos?' do
      service = Service.new
      expect(service).to be_valid
    end

  end

end