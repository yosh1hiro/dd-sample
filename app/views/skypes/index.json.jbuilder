json.array!(@skypes) do |skype|
  json.extract! skype, :id, :user_id, :appointment_date, :completed, :comment
  json.url skype_url(skype, format: :json)
end
