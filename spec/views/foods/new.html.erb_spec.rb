require 'rails_helper'

RSpec.describe "foods/new", :type => :view do
  before(:each) do
    assign(:food, Food.new(
      :group => 1,
      :score => 1,
      :convenience_store => false,
      :name => "MyString",
      :tips => "MyString",
      :protein => 1,
      :vegetable => 1,
      :lipid => 1
    ))
  end

  it "renders new food form" do
    render

    assert_select "form[action=?][method=?]", foods_path, "post" do

      assert_select "input#food_group[name=?]", "food[group]"

      assert_select "input#food_score[name=?]", "food[score]"

      assert_select "input#food_convenience_store[name=?]", "food[convenience_store]"

      assert_select "input#food_name[name=?]", "food[name]"

      assert_select "input#food_tips[name=?]", "food[tips]"

      assert_select "input#food_protein[name=?]", "food[protein]"

      assert_select "input#food_vegetable[name=?]", "food[vegetable]"

      assert_select "input#food_lipid[name=?]", "food[lipid]"
    end
  end
end
