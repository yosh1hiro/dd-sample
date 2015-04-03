json.array!(@levels) do |level|
  json.extract! level, :id, :challenge_id, :group, :level, :stage, :rank, :caption, :description, :comment, :tips, :star, :term
  json.url level_url(level, format: :json)
end
