# == Schema Information
#
# Table name: species
#
#  id                :integer          not null, primary key
#  price             :integer
#  image             :string(255)
#  name              :string(255)
#  appetite          :integer
#  cleanliness_level :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Species < ActiveRecord::Base
attr_accessible :appetite, :cleanliness_level, :image, :name, :price

validates_presence_of :appetite, :cleanliness_level, :image, :name, :price
validates_numericality_of :appetite, :cleanliness_level, :price

has_many :fishes  #can be fish also changes the method that species will have.
end
