json.array!(@meal_records) do |meal_record|
  json.extract! meal_record, :id, :food_id, :user_id, :meal_code, :year, :month, :date, :time
  json.url meal_record_url(meal_record, format: :json)
end
