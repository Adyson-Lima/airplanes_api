require 'rails_helper'

RSpec.describe Airplane, type: :model do
  
  before{@airplane = Airplane.new}
  
  describe 'Teste de preenchimento de campos do model Airplane' do
    
    it 'name consegue ser preenchido?' do
      @airplane.name = "a320"
      expect(@airplane.name).to eq("a320")
    end
    
    it 'description consegue ser preenchido?' do
      @airplane.description = "Um avião bem conceituado"
      expect(@airplane.description).to eq("Um avião bem conceituado")
    end
    
    it 'manufacturer consegue ser preenchido?' do
      @airplane.manufacturer = "airbus"
      expect(@airplane.manufacturer).to eq("airbus")
    end
    
  end
  
end
