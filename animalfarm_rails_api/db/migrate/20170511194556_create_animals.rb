class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :animal_type
      t.string :name
      t.integer :age
      t.boolean :is_adopted
      t.string :photo_url
      t.string :preferences
      t.integer :days_left
    end
  end
end
