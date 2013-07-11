class GamePagesController < ApplicationController

  def stats
  end

  def new
  end

  def play
    @species = Species.all
    @fish = Fish.all
    @aquaria = Aquarium.all #where(:fish_capacity).distinct #.where(:user_id = nil)
    #p @aquaria
  end

  def paypal
  end

end
