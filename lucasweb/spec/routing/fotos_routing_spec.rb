require "rails_helper"

RSpec.describe FotosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fotos").to route_to("fotos#index")
    end

    it "routes to #new" do
      expect(:get => "/fotos/new").to route_to("fotos#new")
    end

    it "routes to #show" do
      expect(:get => "/fotos/1").to route_to("fotos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fotos/1/edit").to route_to("fotos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fotos").to route_to("fotos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fotos/1").to route_to("fotos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fotos/1").to route_to("fotos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fotos/1").to route_to("fotos#destroy", :id => "1")
    end

  end
end
