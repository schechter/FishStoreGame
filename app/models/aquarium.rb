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
end
