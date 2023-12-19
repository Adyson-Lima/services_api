require 'rails_helper'

RSpec.describe Service, type: :model do

  before{@service = Service.new}

  describe 'Testes de preenchimento do model Service' do

    it 'name consegue ser preenchido?' do
      @service.name = ''
      expect(@service.name).to eq('formatação')
    end

  end

end