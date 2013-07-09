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
