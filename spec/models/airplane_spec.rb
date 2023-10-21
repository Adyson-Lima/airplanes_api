require 'rails_helper'

RSpec.describe Airplane, type: :model do
  
  before{@airplane = Airplane.new}
  
  describe 'Teste de preenchimento de campos do model Airplane' do
    
    it 'name consegue ser preenchido?' do
      @airplane.name = "a320"
      expect(@airplane.name).to eq("a320")
    end
    
  end
  
end
