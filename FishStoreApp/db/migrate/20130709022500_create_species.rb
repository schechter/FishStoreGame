class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.integer :price
      t.string :image
      t.string :name
      t.integer :appetite
      t.integer :cleanliness_level

      t.timestamps
    end
  end
end
