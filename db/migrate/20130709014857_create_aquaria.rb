class CreateAquaria < ActiveRecord::Migration
  def change
    create_table :aquaria do |t|
      t.integer :fish_capacity
      t.integer :price

      t.timestamps
    end
  end
end
