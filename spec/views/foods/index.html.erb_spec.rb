require 'rails_helper'

RSpec.describe "foods/index", :type => :view do
  before(:each) do
    assign(:foods, [
      Food.create!(
        :group => 1,
        :score => 2,
        :convenience_store => false,
        :name => "Name",
        :tips => "Tips",
        :protein => 3,
        :vegetable => 4,
        :lipid => 5
      ),
      Food.create!(
        :group => 1,
        :score => 2,
        :convenience_store => false,
        :name => "Name",
        :tips => "Tips",
        :protein => 3,
        :vegetable => 4,
        :lipid => 5
      )
    ])
  end

  it "renders a list of foods" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tips".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
