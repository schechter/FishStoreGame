class SpeciesController < ApplicationController

def new
	@species = Species.new
	render nothing: true
end

end
