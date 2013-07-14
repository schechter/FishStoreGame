# == Schema Information
#
# Table name: aquaria
#
#  id            :integer          not null, primary key
#  fish_capacity :integer
#  price         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#

class Aquarium < ActiveRecord::Base
  attr_accessible :fish_capacity, :price, :user_id

  validates_presence_of :fish_capacity, :price
  validates_numericality_of :price, :fish_capacity
  belongs_to :user
  has_many :fishes

  #Aquarium.select('distinct fish_capacity').where(user_id: nil) #try this to replace method below

  def self.unique_unowned_aquaria
    capacities = []
    aquaria = []
    aquariums = Aquarium.where(user_id: nil)
    aquariums.each do |aquarium|
      unless capacities.include?(aquarium.fish_capacity)
        capacities << aquarium.fish_capacity
        aquaria << aquarium
      end
    end
    aquaria
  end

  def dirtiness_level
    fishes = self.fishes
    dirtiness = 0
    fishes.each do |fish|
      dirtiness += fish.adjusted_cleanliness
    end
    (dirtiness/1)*self.fish_capacity
  end

  def hunger_level
    fishes = self.fishes
    hunger = 0
    fishes.each do |fish|
      hunger += fish.adjusted_appetite
    end
    (hunger/1)*self.fish_capacity
  end

  def self.return_us(current_user)
    returns = current_user.aquaria
    returns.each do |aq_return|
      current_user.increase_funds(aq_return.price)
    end
    aquariums = Aquarium.all
    aquariums.each do |aq|
      aq.user_id = nil
      aq.save
    end
    fishes =  Fish.all
    fishes.each do |fish|
      fish.aquarium_id = nil
      fish.save
    end
  end

end
