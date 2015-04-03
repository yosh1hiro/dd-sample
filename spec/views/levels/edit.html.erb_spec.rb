require 'rails_helper'

RSpec.describe "levels/edit", :type => :view do
  before(:each) do
    @level = assign(:level, Level.create!(
      :challenge_id => 1,
      :group => 1,
      :level => 1,
      :stage => 1,
      :rank => 1,
      :caption => "MyString",
      :description => "MyString",
      :comment => "MyString",
      :tips => "MyString",
      :star => 1,
      :term => "MyString"
    ))
  end

  it "renders the edit level form" do
    render

    assert_select "form[action=?][method=?]", level_path(@level), "post" do

      assert_select "input#level_challenge_id[name=?]", "level[challenge_id]"

      assert_select "input#level_group[name=?]", "level[group]"

      assert_select "input#level_level[name=?]", "level[level]"

      assert_select "input#level_stage[name=?]", "level[stage]"

      assert_select "input#level_rank[name=?]", "level[rank]"

      assert_select "input#level_caption[name=?]", "level[caption]"

      assert_select "input#level_description[name=?]", "level[description]"

      assert_select "input#level_comment[name=?]", "level[comment]"

      assert_select "input#level_tips[name=?]", "level[tips]"

      assert_select "input#level_star[name=?]", "level[star]"

      assert_select "input#level_term[name=?]", "level[term]"
    end
  end
end
