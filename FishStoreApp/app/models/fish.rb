class Fish < ActiveRecord::Base
  attr_accessible :adjusted_appetite, :adjusted_cleanliness, :name, :species_id, :aquarium_id
  belongs_to :species
 	belongs_to :aquarium

 	validates_presence_of :name
 	validates_presence_of :adjusted_appetite
 	validates_presence_of :adjusted_cleanliness
 	validates_numericality_of :adjusted_appetite
 	validates_numericality_of :adjusted_cleanliness
end
