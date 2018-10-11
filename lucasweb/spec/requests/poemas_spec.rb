require 'rails_helper'

RSpec.describe "Poemas", type: :request do
  describe "GET /poemas" do
    it "works! (now write some real specs)" do
      get poemas_path
      expect(response).to have_http_status(200)
    end
  end
end
