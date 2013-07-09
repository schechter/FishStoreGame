class Aquarium < ActiveRecord::Base
  attr_accessible :fish_capacity, :price, :user_id

  validates_presence_of :fish_capacity, :price
 	validates_numericality_of :price, :fish_capacity
  belongs_to :user
  has_many :fishes
end
