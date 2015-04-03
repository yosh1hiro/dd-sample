require 'rails_helper'

RSpec.describe "Skypes", :type => :request do
  describe "GET /skypes" do
    it "works! (now write some real specs)" do
      get skypes_path
      expect(response).to have_http_status(200)
    end
  end
end
