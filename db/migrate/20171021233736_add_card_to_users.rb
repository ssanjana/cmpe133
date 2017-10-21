class AddCardToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :card, :integer
  end
end
