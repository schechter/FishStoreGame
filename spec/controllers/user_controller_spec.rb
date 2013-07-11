require 'spec_helper'

describe UsersController  do

  describe 'change funds' do
    context 'increases funds' do
      context 'paypal' do
        it 'increases the users funds after receiving something from paypal' do
          pending
        end
      end
      context 'selling fish'
      it 'increases the users funds by the 150% of the price of the fish being sold' do
        pending
      end

    end
    context 'decreasing funds' do
      context 'buying aquaria' do
        it 'reduces the users funds by the price of the aquarium purchased' do
          pending
        end
      end
      context 'buying fish' do
        it 'reduces the users funds by the price of the fish purchased' do
          pending
        end

      end
    end
  end

end
