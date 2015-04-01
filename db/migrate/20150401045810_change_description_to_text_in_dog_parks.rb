class ChangeDescriptionToTextInDogParks < ActiveRecord::Migration
  def change
    change_column :dog_parks, :description, :text
  end
end
