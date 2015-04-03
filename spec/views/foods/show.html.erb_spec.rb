require 'rails_helper'

RSpec.describe "foods/show", :type => :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      :group => 1,
      :score => 2,
      :convenience_store => false,
      :name => "Name",
      :tips => "Tips",
      :protein => 3,
      :vegetable => 4,
      :lipid => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Tips/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
