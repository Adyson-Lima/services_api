#require 'rails_helper'
#require 'fileutils'

RSpec.describe 'Testes de verificação de existencia de pastas' do

  it 'pasta spec/models existe?' do
    expect(Dir.exist?('spec/models')).to eq(true)
  end

end