require 'rails_helper'

RSpec.describe "skypes/index", :type => :view do
  before(:each) do
    assign(:skypes, [
      Skype.create!(
        :user_id => 1,
        :completed => false,
        :comment => "Comment"
      ),
      Skype.create!(
        :user_id => 1,
        :completed => false,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of skypes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
