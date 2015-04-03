json.array!(@behavior_modification_levels) do |behavior_modification_level|
  json.extract! behavior_modification_level, :id, :user_id, :green, :low_gi, :oil, :balance, :order, :light, :drink, :alcohol, :morning, :dinner, :snack, :mental, :midnight, :suger, :pose, :life, :muscle, :jogging, :sports
  json.url behavior_modification_level_url(behavior_modification_level, format: :json)
end
