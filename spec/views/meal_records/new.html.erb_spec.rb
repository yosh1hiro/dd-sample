require 'rails_helper'

RSpec.describe "meal_records/new", :type => :view do
  before(:each) do
    assign(:meal_record, MealRecord.new(
      :food_id => 1,
      :user_id => 1,
      :meal_code => 1,
      :year => 1,
      :month => 1,
      :date => 1,
      :time => 1
    ))
  end

  it "renders new meal_record form" do
    render

    assert_select "form[action=?][method=?]", meal_records_path, "post" do

      assert_select "input#meal_record_food_id[name=?]", "meal_record[food_id]"

      assert_select "input#meal_record_user_id[name=?]", "meal_record[user_id]"

      assert_select "input#meal_record_meal_code[name=?]", "meal_record[meal_code]"

      assert_select "input#meal_record_year[name=?]", "meal_record[year]"

      assert_select "input#meal_record_month[name=?]", "meal_record[month]"

      assert_select "input#meal_record_date[name=?]", "meal_record[date]"

      assert_select "input#meal_record_time[name=?]", "meal_record[time]"
    end
  end
end
