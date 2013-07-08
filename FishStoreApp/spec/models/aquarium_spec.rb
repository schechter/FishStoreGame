require 'spec_helper'

describe Aquarium do
  describe 'associations' do
    it { should have_many(:fishes)}
    it { should belong_to(:supply_store) }
    it { should belong_to(:user) }
  end
end
