class AddLatitudeAndLongitudeToDogParks < ActiveRecord::Migration
  def change
    add_column :dog_parks, :latitude, :float
    add_column :dog_parks, :longitude, :float
  end
end
