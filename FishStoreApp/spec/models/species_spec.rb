require 'spec_helper'

describe Species do
  describe 'associations' do
    it { should have_many(:fishes)}
  end
  describe 'validations' do
    it {should validate_presence_of(:appetite) }
    it {should validate_presence_of(:cleanliness_level) }
    it {should validate_presence_of(:image) }
    it {should validate_presence_of(:name) }
    it {should validate_presence_of(:price) }
    it {should validate_numericality_of(:price) }
    it {should validate_numericality_of(:appetite) }
    it {should validate_numericality_of(:cleanliness_level) }
  end
end
