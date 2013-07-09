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

require 'spec_helper'

describe Aquarium do
  describe 'associations' do
    it { should have_many(:fishes)}
    it { should belong_to(:user) }
  end
  describe 'validations' do
  	it {should validate_presence_of(:fish_capacity) }
  	it {should validate_presence_of(:price) }
  	it {should validate_numericality_of(:price) }
  	it {should validate_numericality_of(:fish_capacity) }
  end
end
