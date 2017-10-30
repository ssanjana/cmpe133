class AddRecipeIngredientsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :recipe_ingredients, :string
  end
end
