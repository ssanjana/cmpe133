class AddCategoryidToSearches < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :category_id, :integer
  end
end
