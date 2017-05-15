class AddAnimalBreedsToAnimals < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :animal_breed, :string
  end
end
