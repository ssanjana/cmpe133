json.extract! product, :id, :title, :description, :recipes, :recipe_instructions, :recipe_ingredients, :recipe_url, :image_url, :price, :created_at, :updated_at
json.url product_url(product, format: :json) 
