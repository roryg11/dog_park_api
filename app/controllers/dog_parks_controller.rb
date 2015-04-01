class DogParksController < ApplicationController
  def index
    @dog_parks  = DogPark.all
    render json: @dog_parks
  end
end
