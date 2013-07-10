class FishController < ApplicationController


  def new
    @fish = Fish.new
    @species = Species.all
  end

  def create
    species = Species.find(params[:species])
    roll = rand(0.8..1.2)
    fish = Fish.new(name: Faker::Name.first_name, species_id: species.id, adjusted_appetite: species.appetite*roll, adjusted_cleanliness: species.cleanliness_level*roll)
    fish.save!
    redirect_to :back
  end

def destroy
  Fish.find(params[:id]).destroy
  render nothing: true
end

end