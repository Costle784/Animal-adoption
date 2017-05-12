class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
    t.string :animal_type
    t.string :name
    t.string :gender
    t.integer :age
    t.boolean :is_adopted
    t.string :preferences
    t.integer :days_left
    t.string :photo_url
    t.references :location, index: true, foreign_key: true
    end
  end
end
