require 'rails_helper'

RSpec.describe "challenges/new", :type => :view do
  before(:each) do
    assign(:challenge, Challenge.new(
      :group => 1,
      :caption => "MyString",
      :description => "MyString",
      :description_1 => "MyString",
      :description_2 => "MyString",
      :description_3 => "MyString",
      :description_4 => "MyString",
      :comment => "MyString",
      :category => "MyString",
      :param_0 => 1,
      :param_1 => 1,
      :param_2 => 1,
      :image => ""
    ))
  end

  it "renders new challenge form" do
    render

    assert_select "form[action=?][method=?]", challenges_path, "post" do

      assert_select "input#challenge_group[name=?]", "challenge[group]"

      assert_select "input#challenge_caption[name=?]", "challenge[caption]"

      assert_select "input#challenge_description[name=?]", "challenge[description]"

      assert_select "input#challenge_description_1[name=?]", "challenge[description_1]"

      assert_select "input#challenge_description_2[name=?]", "challenge[description_2]"

      assert_select "input#challenge_description_3[name=?]", "challenge[description_3]"

      assert_select "input#challenge_description_4[name=?]", "challenge[description_4]"

      assert_select "input#challenge_comment[name=?]", "challenge[comment]"

      assert_select "input#challenge_category[name=?]", "challenge[category]"

      assert_select "input#challenge_param_0[name=?]", "challenge[param_0]"

      assert_select "input#challenge_param_1[name=?]", "challenge[param_1]"

      assert_select "input#challenge_param_2[name=?]", "challenge[param_2]"

      assert_select "input#challenge_image[name=?]", "challenge[image]"
    end
  end
end
