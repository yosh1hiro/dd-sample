require "rails_helper"

RSpec.describe MealRecordsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/meal_records").to route_to("meal_records#index")
    end

    it "routes to #new" do
      expect(:get => "/meal_records/new").to route_to("meal_records#new")
    end

    it "routes to #show" do
      expect(:get => "/meal_records/1").to route_to("meal_records#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/meal_records/1/edit").to route_to("meal_records#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/meal_records").to route_to("meal_records#create")
    end

    it "routes to #update" do
      expect(:put => "/meal_records/1").to route_to("meal_records#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/meal_records/1").to route_to("meal_records#destroy", :id => "1")
    end

  end
end
