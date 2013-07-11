class AquariaController < ApplicationController

  def sell_me
    aquarium = Aquarium.find(params[:id])
    if current_user.funds >= aquarium.price
      unless current_user.aquaria.count == 6
        current_user.decrease_funds(aquarium.price)
        current_user.aquaria << aquarium
        p current_user.aquaria.count
      end
    end
    redirect_to :back
  end
end
