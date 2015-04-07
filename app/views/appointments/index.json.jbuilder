json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :user_id, :duedate, :complete, :doctor, :comment
  json.url appointment_url(appointment, format: :json)
end
