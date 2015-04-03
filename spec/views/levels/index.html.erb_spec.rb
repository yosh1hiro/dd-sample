require 'rails_helper'

RSpec.describe "levels/index", :type => :view do
  before(:each) do
    assign(:levels, [
      Level.create!(
        :challenge_id => 1,
        :group => 2,
        :level => 3,
        :stage => 4,
        :rank => 5,
        :caption => "Caption",
        :description => "Description",
        :comment => "Comment",
        :tips => "Tips",
        :star => 6,
        :term => "Term"
      ),
      Level.create!(
        :challenge_id => 1,
        :group => 2,
        :level => 3,
        :stage => 4,
        :rank => 5,
        :caption => "Caption",
        :description => "Description",
        :comment => "Comment",
        :tips => "Tips",
        :star => 6,
        :term => "Term"
      )
    ])
  end

  it "renders a list of levels" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Caption".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => "Tips".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Term".to_s, :count => 2
  end
end
