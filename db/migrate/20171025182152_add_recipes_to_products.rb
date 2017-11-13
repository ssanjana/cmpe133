class AddRecipesToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :recipes, :string
  end
end
