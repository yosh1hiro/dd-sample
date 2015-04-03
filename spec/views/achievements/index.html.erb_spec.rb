require 'rails_helper'

RSpec.describe "achievements/index", :type => :view do
  before(:each) do
    assign(:achievements, [
      Achievement.create!(
        :user_id => 1,
        :challenge_id => 2,
        :level_id => 3,
        :star => 4,
        :year => 5,
        :month => 6,
        :date => 7,
        :time => 8
      ),
      Achievement.create!(
        :user_id => 1,
        :challenge_id => 2,
        :level_id => 3,
        :star => 4,
        :year => 5,
        :month => 6,
        :date => 7,
        :time => 8
      )
    ])
  end

  it "renders a list of achievements" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
  end
end
