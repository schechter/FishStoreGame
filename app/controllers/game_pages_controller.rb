class GamePagesController < ApplicationController

  def stats
  end

  def new
    @species = Species.all
    @fish = Fish.all
    @aquaria = Aquarium.unique_unowned_aquaria  #this method should be cleaned up?? Should be one sql querry but works
    if @users_aquaria = Aquarium.where(user_id: current_user.id)
      @users_aquaria
    else
      @users_aquaria = []
    end
  end

  def play
    @species = Species.all
    @fish = Fish.all
    @aquaria = Aquarium.where(user_id: current_user.id)
    if @users_aquaria = Aquarium.where(user_id: current_user.id)
      @users_aquaria
    else
      @users_aquaria = []
    end
  end

  def populate_aquarium
    @species = Species.all
    @aquaria = Aquarium.unique_unowned_aquaria  #this method should be cleaned up?? Should be one sql querry but works
    if @users_aquaria = Aquarium.where(user_id: current_user.id)
      @users_aquaria
    else
      @users_aquaria = []
    end
    aquarium = Aquarium.find(params[:stuff][:aquarium])
    species = Species.find_by_name(params[:stuff][:species])
    fish = Fish.create_fish(species)
    fish.add_fish_to_aquarium(aquarium)
    current_user.decrease_funds(species.price)
    respond_to do |format|
      format.js
    end
  end

  def paypal
  end

end
