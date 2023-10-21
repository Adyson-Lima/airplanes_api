require 'rails_helper'

RSpec.describe Api::V1::AirplanesController, type: :controller do
  
  before{ @airplane = Airplane.create(name: "a321",description: "um avião muito utilizado", manufacturer: "airbus")
    }
  
  describe 'GET /api/v1/airplanes' do
    it 'Consegue listar todos os airplanes e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end
  
  describe 'GET /api/v1/airplanes/id' do
    it 'Consegue retornar um airplane especifico e retornar status 200?' do
      get :show, params: {id: @airplane.id}
      expect(response.body).to include_json(id: @airplane.id)
      expect(response).to have_http_status(200)
    end
  end
  
end
