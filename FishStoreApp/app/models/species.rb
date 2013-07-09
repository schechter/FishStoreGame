class Species < ActiveRecord::Base
  attr_accessible :appetite, :cleanliness_level, :image, :name, :price

validates_presence_of :appetite, :cleanliness_level, :image, :name, :price
validates_numericality_of :appetite, :cleanliness_level, :price

has_many :fishes
end
