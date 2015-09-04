json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :ingredients_id, :instructions, :rating
  json.url recipe_url(recipe, format: :json)
end
