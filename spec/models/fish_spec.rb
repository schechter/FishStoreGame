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

require 'spec_helper'

describe Fish do
  describe 'associations' do
    it { should belong_to(:species)}
    it { should belong_to(:aquarium)}
  end
  describe 'validations' do
  	it {should validate_presence_of(:name) }
  	it {should validate_presence_of(:adjusted_appetite) }
  	it {should validate_presence_of(:adjusted_cleanliness) }
  	it {should validate_numericality_of(:adjusted_appetite) }
  	it {should validate_numericality_of(:adjusted_cleanliness) }
  end
end
