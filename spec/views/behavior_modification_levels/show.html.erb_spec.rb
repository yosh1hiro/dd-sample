require 'rails_helper'

RSpec.describe "behavior_modification_levels/show", :type => :view do
  before(:each) do
    @behavior_modification_level = assign(:behavior_modification_level, BehaviorModificationLevel.create!(
      :user_id => 1,
      :green => 2,
      :low_gi => 3,
      :oil => 4,
      :balance => 5,
      :order => 6,
      :light => 7,
      :drink => 8,
      :alcohol => 9,
      :morning => 10,
      :dinner => 11,
      :snack => 12,
      :mental => 13,
      :midnight => 14,
      :suger => 15,
      :pose => 16,
      :life => 17,
      :muscle => 18,
      :jogging => 19,
      :sports => 20
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
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/15/)
    expect(rendered).to match(/16/)
    expect(rendered).to match(/17/)
    expect(rendered).to match(/18/)
    expect(rendered).to match(/19/)
    expect(rendered).to match(/20/)
  end
end
