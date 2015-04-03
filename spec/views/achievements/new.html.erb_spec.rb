require 'rails_helper'

RSpec.describe "achievements/new", :type => :view do
  before(:each) do
    assign(:achievement, Achievement.new(
      :user_id => 1,
      :challenge_id => 1,
      :level_id => 1,
      :star => 1,
      :year => 1,
      :month => 1,
      :date => 1,
      :time => 1
    ))
  end

  it "renders new achievement form" do
    render

    assert_select "form[action=?][method=?]", achievements_path, "post" do

      assert_select "input#achievement_user_id[name=?]", "achievement[user_id]"

      assert_select "input#achievement_challenge_id[name=?]", "achievement[challenge_id]"

      assert_select "input#achievement_level_id[name=?]", "achievement[level_id]"

      assert_select "input#achievement_star[name=?]", "achievement[star]"

      assert_select "input#achievement_year[name=?]", "achievement[year]"

      assert_select "input#achievement_month[name=?]", "achievement[month]"

      assert_select "input#achievement_date[name=?]", "achievement[date]"

      assert_select "input#achievement_time[name=?]", "achievement[time]"
    end
  end
end
