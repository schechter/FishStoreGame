require 'spec_helper'

describe User do
  describe 'validations' do
  	it {should validate_presence_of(:user_name) }
  end
end
