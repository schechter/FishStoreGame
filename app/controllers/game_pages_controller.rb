class GamePagesController < ApplicationController

  def stats
  end

  def new
  end

  def play
    @species = Species.all
    @fish = Fish.all
    @aquaria = Aquarium.unique_unowned_aquaria  #this method should be cleaned up?? Should be one sql querry but works
  end

  def paypal
  end

end
