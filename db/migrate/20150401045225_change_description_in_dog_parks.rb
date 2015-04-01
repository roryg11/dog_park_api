class ChangeDescriptionInDogParks < ActiveRecord::Migration
  def change
    change_column :dog_parks, :description, :string
  end
end
