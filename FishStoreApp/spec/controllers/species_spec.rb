require 'spec_helper'

describe SpeciesController do


  describe 'GET #new' do
    let (:species) {mock_model(Species).as_new_record }
    before do
      Species.stub(:new).and_return(species)
    end
    it 'saves a new species as an instance variable' do
      get :new
      assigns(:species).should be_an_instance_of(Species)
    end
  end

  describe 'POST #create' do
    let (:species) {mock_model(Species).as_new_record }
    Species.stub(:new).and_return(species)

    it 'saves the species' do
      species.should_recieve(:save)
      post(:create)
    end
  end
end
