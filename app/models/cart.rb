class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_item(product_id)
    item = items.where('product_id = ?', product_id).first
    if item
      item.quantity + 1
      save
    else
      cart.items << Line_Item.new(product_id: product_id, quantity: 1, cart_id: self.id)
    end
  end
end
