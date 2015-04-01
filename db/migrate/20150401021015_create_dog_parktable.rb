class CreateDogParktable < ActiveRecord::Migration
  def change
    create_table :dog_parks do |t|
      t.string :name
      t.string :address
      t.integer :review_average
      t.integer :description
    end
  end
end
