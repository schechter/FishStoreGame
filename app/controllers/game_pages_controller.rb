class GamePagesController < ApplicationController

  def stats
  end

  def new
    @species = Species.all
    @fish = Fish.all
    @aquaria = Aquarium.unique_unowned_aquaria  #this method should be cleaned up?? Should be one sql querry but works
    @users_aquaria = Aquarium.where(user_id: current_user.id)
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
    @users_aquaria = Aquarium.where(user_id: current_user.id)
    aquarium = Aquarium.find(params[:stuff][:aquarium])
    species = Species.find_by_name(params[:stuff][:species])
    if current_user.funds > species.price
      fish = Fish.create_fish(species)
      fish.add_fish_to_aquarium(aquarium)
      current_user.decrease_funds(species.price)
    end
    respond_to do |format|
      format.js
    end
  end

  def sell_fish
    @users_aquaria = Aquarium.where(user_id: current_user.id)
    fish = Fish.find(params[:stuff][:fish]).destroy
    current_user.increase_funds(fish.species.price * 2)
    respond_to do |format|
      format.js
    end
  end

  def round_over
    @users_fish = Aquarium.which_fish(current_user)
    Aquarium.return_us(current_user);
    @user = current_user
  end

  def paypal
  end

end
