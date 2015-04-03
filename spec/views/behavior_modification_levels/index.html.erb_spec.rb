require 'rails_helper'

RSpec.describe "behavior_modification_levels/index", :type => :view do
  before(:each) do
    assign(:behavior_modification_levels, [
      BehaviorModificationLevel.create!(
        :user_id => 1,
        :green => 2,
        :low_gi => 3,
        :oil => 4,
        :balance => 5,
        :order => 6,
        :light => 7,
        :drink => 8,
        :alcohol => 9,
        :morning => 10,
        :dinner => 11,
        :snack => 12,
        :mental => 13,
        :midnight => 14,
        :suger => 15,
        :pose => 16,
        :life => 17,
        :muscle => 18,
        :jogging => 19,
        :sports => 20
      ),
      BehaviorModificationLevel.create!(
        :user_id => 1,
        :green => 2,
        :low_gi => 3,
        :oil => 4,
        :balance => 5,
        :order => 6,
        :light => 7,
        :drink => 8,
        :alcohol => 9,
        :morning => 10,
        :dinner => 11,
        :snack => 12,
        :mental => 13,
        :midnight => 14,
        :suger => 15,
        :pose => 16,
        :life => 17,
        :muscle => 18,
        :jogging => 19,
        :sports => 20
      )
    ])
  end

  it "renders a list of behavior_modification_levels" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => 15.to_s, :count => 2
    assert_select "tr>td", :text => 16.to_s, :count => 2
    assert_select "tr>td", :text => 17.to_s, :count => 2
    assert_select "tr>td", :text => 18.to_s, :count => 2
    assert_select "tr>td", :text => 19.to_s, :count => 2
    assert_select "tr>td", :text => 20.to_s, :count => 2
  end
end
