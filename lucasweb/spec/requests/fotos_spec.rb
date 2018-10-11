require 'rails_helper'

RSpec.describe "Fotos", type: :request do
  describe "GET /fotos" do
    it "works! (now write some real specs)" do
      get fotos_path
      expect(response).to have_http_status(200)
    end
  end
end
