require "rails_helper"

RSpec.describe BehaviorModificationLevelsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/behavior_modification_levels").to route_to("behavior_modification_levels#index")
    end

    it "routes to #new" do
      expect(:get => "/behavior_modification_levels/new").to route_to("behavior_modification_levels#new")
    end

    it "routes to #show" do
      expect(:get => "/behavior_modification_levels/1").to route_to("behavior_modification_levels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/behavior_modification_levels/1/edit").to route_to("behavior_modification_levels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/behavior_modification_levels").to route_to("behavior_modification_levels#create")
    end

    it "routes to #update" do
      expect(:put => "/behavior_modification_levels/1").to route_to("behavior_modification_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/behavior_modification_levels/1").to route_to("behavior_modification_levels#destroy", :id => "1")
    end

  end
end
