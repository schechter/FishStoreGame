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
