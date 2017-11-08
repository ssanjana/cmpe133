class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :history

  def total_price
    product.price * quantity
  end
end
