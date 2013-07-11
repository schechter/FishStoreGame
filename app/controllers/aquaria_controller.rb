class AquariaController < ApplicationController

def sell_me
  aquarium = Aquarium.find(params[:id])
  current_user.decrease_funds(aquarium.price)
  current_user.aquaria << aquarium
  redirect_to :back
end

end