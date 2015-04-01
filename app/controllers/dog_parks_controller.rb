class DogParksController < ApplicationController
  def index
    @dog_parks  = DogPark.all
    render json: @dog_parks
  end

  def geojson
    @parks = DogPark.all
    @parks_geojson = Array.new

    @parks.each do |park|
      @parks_geojson << {
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [park.longitude, park.latitude]
        },
        properties: {
          name: park.name,
          address: park.address,
          description: park.description,
          :'marker-color' => '#00607d',
          :'marker-symbol' => 'circle',
          :'marker-size' => 'medium',
        }
      }
    end
    render json: @parks_geojson
  end
end
