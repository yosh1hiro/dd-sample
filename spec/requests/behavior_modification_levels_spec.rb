require 'rails_helper'

RSpec.describe "BehaviorModificationLevels", :type => :request do
  describe "GET /behavior_modification_levels" do
    it "works! (now write some real specs)" do
      get behavior_modification_levels_path
      expect(response).to have_http_status(200)
    end
  end
end
