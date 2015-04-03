require 'rails_helper'

RSpec.describe "challenges/index", :type => :view do
  before(:each) do
    assign(:challenges, [
      Challenge.create!(
        :group => 1,
        :caption => "Caption",
        :description => "Description",
        :description_1 => "Description 1",
        :description_2 => "Description 2",
        :description_3 => "Description 3",
        :description_4 => "Description 4",
        :comment => "Comment",
        :category => "Category",
        :param_0 => 2,
        :param_1 => 3,
        :param_2 => 4,
        :image => ""
      ),
      Challenge.create!(
        :group => 1,
        :caption => "Caption",
        :description => "Description",
        :description_1 => "Description 1",
        :description_2 => "Description 2",
        :description_3 => "Description 3",
        :description_4 => "Description 4",
        :comment => "Comment",
        :category => "Category",
        :param_0 => 2,
        :param_1 => 3,
        :param_2 => 4,
        :image => ""
      )
    ])
  end

  it "renders a list of challenges" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Caption".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Description 1".to_s, :count => 2
    assert_select "tr>td", :text => "Description 2".to_s, :count => 2
    assert_select "tr>td", :text => "Description 3".to_s, :count => 2
    assert_select "tr>td", :text => "Description 4".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
