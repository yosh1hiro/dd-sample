require 'rails_helper'

RSpec.describe "MealRecords", :type => :request do
  describe "GET /meal_records" do
    it "works! (now write some real specs)" do
      get meal_records_path
      expect(response).to have_http_status(200)
    end
  end
end
