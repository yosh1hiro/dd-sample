require 'rails_helper'

RSpec.describe "achievements/show", :type => :view do
  before(:each) do
    @achievement = assign(:achievement, Achievement.create!(
      :user_id => 1,
      :challenge_id => 2,
      :level_id => 3,
      :star => 4,
      :year => 5,
      :month => 6,
      :date => 7,
      :time => 8
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
  end
end
