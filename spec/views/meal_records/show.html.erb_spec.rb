require 'rails_helper'

RSpec.describe "meal_records/show", :type => :view do
  before(:each) do
    @meal_record = assign(:meal_record, MealRecord.create!(
      :food_id => 1,
      :user_id => 2,
      :meal_code => 3,
      :year => 4,
      :month => 5,
      :date => 6,
      :time => 7
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
  end
end
