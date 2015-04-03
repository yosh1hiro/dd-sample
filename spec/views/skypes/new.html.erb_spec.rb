require 'rails_helper'

RSpec.describe "skypes/new", :type => :view do
  before(:each) do
    assign(:skype, Skype.new(
      :user_id => 1,
      :completed => false,
      :comment => "MyString"
    ))
  end

  it "renders new skype form" do
    render

    assert_select "form[action=?][method=?]", skypes_path, "post" do

      assert_select "input#skype_user_id[name=?]", "skype[user_id]"

      assert_select "input#skype_completed[name=?]", "skype[completed]"

      assert_select "input#skype_comment[name=?]", "skype[comment]"
    end
  end
end
