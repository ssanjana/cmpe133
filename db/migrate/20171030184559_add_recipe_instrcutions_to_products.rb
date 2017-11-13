class AddRecipeInstrcutionsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :recipe_instructions, :string
  end
  
end
