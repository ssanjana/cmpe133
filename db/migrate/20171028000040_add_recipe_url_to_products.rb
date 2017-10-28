class AddRecipeUrlToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :recipe_url, :string
  end
end
