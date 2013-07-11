class GamePagesController < ApplicationController

  def stats
  end

  def new
    @fish = Fish.all
    @aquaria = Aquarium.unique_unowned_aquaria  #this method should be cleaned up?? Should be one sql querry but works
    @users_aquaria = Aquarium.where(user_id: current_user.id)
    p '========================'
    p @users_aquaria
  end

  def play
    @species = Species.all
    @fish = Fish.all
    @aquaria = Aquarium.where(user_id: current_user.id)
    
  end

  def paypal
  end

end
