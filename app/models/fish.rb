# == Schema Information
#
# Table name: fish
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  adjusted_appetite    :float
#  adjusted_cleanliness :float
#  species_id           :integer
#  aquarium_id          :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Fish < ActiveRecord::Base
  attr_accessible :adjusted_appetite, :adjusted_cleanliness, :name, :species_id, :aquarium_id
  belongs_to :species
  belongs_to :aquarium

  validates_presence_of :name
  validates_presence_of :adjusted_appetite
  validates_presence_of :adjusted_cleanliness
  validates_numericality_of :adjusted_appetite
  validates_numericality_of :adjusted_cleanliness


  def add_fish_to_aquarium(aquarium)
    unless aquarium.fishes.count == aquarium.fish_capacity
      aquarium.fishes << self
    end
  end

  def self.create_fish(species)
    roll  = rand(0.8..1.2)
    fish = Fish.new(name: Faker::Name.first_name, species_id: species.id, adjusted_appetite: species.appetite*roll, adjusted_cleanliness: species.cleanliness_level*roll)
    fish
  end
end
