require 'rails_helper'

RSpec.describe "challenges/show", :type => :view do
  before(:each) do
    @challenge = assign(:challenge, Challenge.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Caption/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Description 1/)
    expect(rendered).to match(/Description 2/)
    expect(rendered).to match(/Description 3/)
    expect(rendered).to match(/Description 4/)
    expect(rendered).to match(/Comment/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
