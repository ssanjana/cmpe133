class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_item(product_id)
    item = line_items.find_by_product_id(product_id)
    #item = items.find_by(product_id: product_id).first
    #item = items.find_by(product_id: product_params[:product][:product_id])
    if item
      item.quantity += 1
      save
    else
      item = line_items.build(product_id: product_id, quantity: 1)
      #cart.items << Line_Item.new(product_id: product_id, quantity: 1, cart_id: self.id)
    end
    item
  end
  # for loop iterating through all the line_items to add up for a cart subtotal
  def subtotal
    subtotal = 0
    line_items.each do |item|
      subtotal = subtotal + item.total_price
    end
    subtotal
  end
end
