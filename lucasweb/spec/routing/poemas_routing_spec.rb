require "rails_helper"

RSpec.describe PoemasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/poemas").to route_to("poemas#index")
    end

    it "routes to #new" do
      expect(:get => "/poemas/new").to route_to("poemas#new")
    end

    it "routes to #show" do
      expect(:get => "/poemas/1").to route_to("poemas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/poemas/1/edit").to route_to("poemas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/poemas").to route_to("poemas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/poemas/1").to route_to("poemas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/poemas/1").to route_to("poemas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/poemas/1").to route_to("poemas#destroy", :id => "1")
    end

  end
end
