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
        :"type"=> 'Feature',
        :"geometry"=> {
          :"type"=> 'Point',
          :"coordinates"=> ["#{park.longitude}", "#{park.latitude}"]
        },
        :"properties"=> {
          :"title"=> park.name,
          :"address"=> park.address,
          :"description"=> park.description,
          :'marker-color'=> '#00607d',
          :'marker-symbol'=> 'circle',
          :'marker-size'=> 'medium',
        }
      }
    end

    @geojson=[{
      :"type"=> "FeatureCollection",
      :"features"=> @parks_geojson
      }]
    render json: @geojson
  end

  def map
  end
end
