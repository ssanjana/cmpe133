class HistoryController < ApplicationController
  def index
    @carts = Cart.all
  end

end
