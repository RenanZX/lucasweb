require "rails_helper"

RSpec.describe TextosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/textos").to route_to("textos#index")
    end

    it "routes to #new" do
      expect(:get => "/textos/new").to route_to("textos#new")
    end

    it "routes to #show" do
      expect(:get => "/textos/1").to route_to("textos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/textos/1/edit").to route_to("textos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/textos").to route_to("textos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/textos/1").to route_to("textos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/textos/1").to route_to("textos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/textos/1").to route_to("textos#destroy", :id => "1")
    end

  end
end
