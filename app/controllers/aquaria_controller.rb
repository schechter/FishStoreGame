class AquariaController < ApplicationController

  def sell_me
    aquarium = Aquarium.find(params[:id])
    if current_user.funds >= aquarium.price
      unless current_user.aquaria.count == 6
        current_user.decrease_funds(aquarium.price)
        current_user.aquaria << aquarium
      end
    end
    @species = Species.all
    @fish = Fish.all
    @aquaria = Aquarium.unique_unowned_aquaria 
    @users_aquaria = Aquarium.where(user_id: current_user.id)
    respond_to do |format|
      format.js
    end
  end
end
