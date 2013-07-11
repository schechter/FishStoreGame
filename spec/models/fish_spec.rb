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

  describe 'populate aquarium' do
    before do
    @fish_1 = create(:fish)
    @fish_2 = create(:fish)
    @aquarium_1 = create(:aquarium)
  end
    context 'the aquarium has not reached max fish capacity' do
      it 'increases the number of fish in the aquarium' do
        @aquarium_1.fish_capacity = 1
        @fish_1.add_fish_to_aquarium(@aquarium_1)
        @aquarium_1.fishes.count.should eq 1
      end
    end
    context 'the aquarium has reached max fish capacity' do
      it 'does not increase the number of fish in the aquarium ' do
        @aquarium_1.fish_capacity = 1
        @aquarium_1.fishes = [@fish_1]
        @fish_2.add_fish_to_aquarium(@aquarium_1)
        @aquarium_1.fishes.count.should eq 1
        @aquarium_1.fishes.should eq [@fish_1]
      end
    end
  end
end

