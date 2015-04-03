require 'rails_helper'

RSpec.describe "levels/show", :type => :view do
  before(:each) do
    @level = assign(:level, Level.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Caption/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Comment/)
    expect(rendered).to match(/Tips/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Term/)
  end
end
