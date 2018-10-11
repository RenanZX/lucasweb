require "rails_helper"

RSpec.describe WebseriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/webseries").to route_to("webseries#index")
    end

    it "routes to #new" do
      expect(:get => "/webseries/new").to route_to("webseries#new")
    end

    it "routes to #show" do
      expect(:get => "/webseries/1").to route_to("webseries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/webseries/1/edit").to route_to("webseries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/webseries").to route_to("webseries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/webseries/1").to route_to("webseries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/webseries/1").to route_to("webseries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/webseries/1").to route_to("webseries#destroy", :id => "1")
    end

  end
end
