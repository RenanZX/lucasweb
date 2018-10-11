require "rails_helper"

RSpec.describe MusicasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/musicas").to route_to("musicas#index")
    end

    it "routes to #new" do
      expect(:get => "/musicas/new").to route_to("musicas#new")
    end

    it "routes to #show" do
      expect(:get => "/musicas/1").to route_to("musicas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/musicas/1/edit").to route_to("musicas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/musicas").to route_to("musicas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/musicas/1").to route_to("musicas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/musicas/1").to route_to("musicas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/musicas/1").to route_to("musicas#destroy", :id => "1")
    end

  end
end
