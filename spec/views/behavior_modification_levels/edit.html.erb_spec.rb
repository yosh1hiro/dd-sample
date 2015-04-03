require 'rails_helper'

RSpec.describe "behavior_modification_levels/edit", :type => :view do
  before(:each) do
    @behavior_modification_level = assign(:behavior_modification_level, BehaviorModificationLevel.create!(
      :user_id => 1,
      :green => 1,
      :low_gi => 1,
      :oil => 1,
      :balance => 1,
      :order => 1,
      :light => 1,
      :drink => 1,
      :alcohol => 1,
      :morning => 1,
      :dinner => 1,
      :snack => 1,
      :mental => 1,
      :midnight => 1,
      :suger => 1,
      :pose => 1,
      :life => 1,
      :muscle => 1,
      :jogging => 1,
      :sports => 1
    ))
  end

  it "renders the edit behavior_modification_level form" do
    render

    assert_select "form[action=?][method=?]", behavior_modification_level_path(@behavior_modification_level), "post" do

      assert_select "input#behavior_modification_level_user_id[name=?]", "behavior_modification_level[user_id]"

      assert_select "input#behavior_modification_level_green[name=?]", "behavior_modification_level[green]"

      assert_select "input#behavior_modification_level_low_gi[name=?]", "behavior_modification_level[low_gi]"

      assert_select "input#behavior_modification_level_oil[name=?]", "behavior_modification_level[oil]"

      assert_select "input#behavior_modification_level_balance[name=?]", "behavior_modification_level[balance]"

      assert_select "input#behavior_modification_level_order[name=?]", "behavior_modification_level[order]"

      assert_select "input#behavior_modification_level_light[name=?]", "behavior_modification_level[light]"

      assert_select "input#behavior_modification_level_drink[name=?]", "behavior_modification_level[drink]"

      assert_select "input#behavior_modification_level_alcohol[name=?]", "behavior_modification_level[alcohol]"

      assert_select "input#behavior_modification_level_morning[name=?]", "behavior_modification_level[morning]"

      assert_select "input#behavior_modification_level_dinner[name=?]", "behavior_modification_level[dinner]"

      assert_select "input#behavior_modification_level_snack[name=?]", "behavior_modification_level[snack]"

      assert_select "input#behavior_modification_level_mental[name=?]", "behavior_modification_level[mental]"

      assert_select "input#behavior_modification_level_midnight[name=?]", "behavior_modification_level[midnight]"

      assert_select "input#behavior_modification_level_suger[name=?]", "behavior_modification_level[suger]"

      assert_select "input#behavior_modification_level_pose[name=?]", "behavior_modification_level[pose]"

      assert_select "input#behavior_modification_level_life[name=?]", "behavior_modification_level[life]"

      assert_select "input#behavior_modification_level_muscle[name=?]", "behavior_modification_level[muscle]"

      assert_select "input#behavior_modification_level_jogging[name=?]", "behavior_modification_level[jogging]"

      assert_select "input#behavior_modification_level_sports[name=?]", "behavior_modification_level[sports]"
    end
  end
end
