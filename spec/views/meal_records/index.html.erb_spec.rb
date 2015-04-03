require 'rails_helper'

RSpec.describe "meal_records/index", :type => :view do
  before(:each) do
    assign(:meal_records, [
      MealRecord.create!(
        :food_id => 1,
        :user_id => 2,
        :meal_code => 3,
        :year => 4,
        :month => 5,
        :date => 6,
        :time => 7
      ),
      MealRecord.create!(
        :food_id => 1,
        :user_id => 2,
        :meal_code => 3,
        :year => 4,
        :month => 5,
        :date => 6,
        :time => 7
      )
    ])
  end

  it "renders a list of meal_records" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
  end
end
