require "rails_helper"

RSpec.describe SkypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/skypes").to route_to("skypes#index")
    end

    it "routes to #new" do
      expect(:get => "/skypes/new").to route_to("skypes#new")
    end

    it "routes to #show" do
      expect(:get => "/skypes/1").to route_to("skypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/skypes/1/edit").to route_to("skypes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/skypes").to route_to("skypes#create")
    end

    it "routes to #update" do
      expect(:put => "/skypes/1").to route_to("skypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/skypes/1").to route_to("skypes#destroy", :id => "1")
    end

  end
end
