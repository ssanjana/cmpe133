class HistoryController < ApplicationController
<<<<<<< HEAD
	before_action :authenticate_user!
=======
>>>>>>> 4933270bbf7bc821417be985da244c8d8dadcc30
  def index
    @carts = Cart.all
  end

end
