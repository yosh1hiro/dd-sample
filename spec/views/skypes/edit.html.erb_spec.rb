require 'rails_helper'

RSpec.describe "skypes/edit", :type => :view do
  before(:each) do
    @skype = assign(:skype, Skype.create!(
      :user_id => 1,
      :completed => false,
      :comment => "MyString"
    ))
  end

  it "renders the edit skype form" do
    render

    assert_select "form[action=?][method=?]", skype_path(@skype), "post" do

      assert_select "input#skype_user_id[name=?]", "skype[user_id]"

      assert_select "input#skype_completed[name=?]", "skype[completed]"

      assert_select "input#skype_comment[name=?]", "skype[comment]"
    end
  end
end
