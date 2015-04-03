require 'rails_helper'

RSpec.describe "skypes/show", :type => :view do
  before(:each) do
    @skype = assign(:skype, Skype.create!(
      :user_id => 1,
      :completed => false,
      :comment => "Comment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Comment/)
  end
end
