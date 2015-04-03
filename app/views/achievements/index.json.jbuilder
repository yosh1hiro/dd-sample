json.array!(@achievements) do |achievement|
  json.extract! achievement, :id, :user_id, :challenge_id, :level_id, :star, :year, :month, :date, :time
  json.url achievement_url(achievement, format: :json)
end
