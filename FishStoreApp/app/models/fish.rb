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
 	# validates_presence_of :adjusted_appetite
 	# validates_presence_of :adjusted_cleanliness
 	# validates_numericality_of :adjusted_appetite
 	# validates_numericality_of :adjusted_cleanliness
end
