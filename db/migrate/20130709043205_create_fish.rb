class CreateFish < ActiveRecord::Migration
  def change
    create_table :fish do |t|
      t.string :name
      t.float :adjusted_appetite
      t.float :adjusted_cleanliness
      t.integer :species_id
      t.integer :aquarium_id
      t.timestamps
    end
  end
end
