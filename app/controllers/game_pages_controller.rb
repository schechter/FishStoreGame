class GamePagesController < ApplicationController

  def stats
  end

  def new
  end

  def play
    @species = Species.all
    @fish = Fish.all
    @aquaria = Aquarium.all
  end

  def paypal
  end

end
