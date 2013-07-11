class UsersController < ApplicationController



  def buy_fish #this method will receive the params(just price?) when a fish is added to the users aquarium, probably called from the aquaria controller as part of the
    price = params[:price]
    self.decrease_funds(price)
  end

end
