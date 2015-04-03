json.array!(@foods) do |food|
  json.extract! food, :id, :group, :score, :convenience_store, :name, :tips, :protein, :vegetable, :lipid
  json.url food_url(food, format: :json)
end
