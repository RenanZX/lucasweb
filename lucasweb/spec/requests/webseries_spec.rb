require 'rails_helper'

RSpec.describe "Webseries", type: :request do
  describe "GET /webseries" do
    it "works! (now write some real specs)" do
      get webseries_index_path
      expect(response).to have_http_status(200)
    end
  end
end
