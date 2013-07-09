require 'spec_helper'

describe FishController  do
  before do
    @fish = Fish.create(name: 'bob', adjusted_appetite: 1.0, adjusted_cleanliness: 1.0)
  end
  describe 'DELETE #destroy' do
    it 'deletes a fish' do
      original_count = Fish.count
      delete :destroy, id: @fish
      Fish.count.should eq original_count-1
    end
  end
end
