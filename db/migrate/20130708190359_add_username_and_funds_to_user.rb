class AddUsernameAndFundsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :funds, :float
  	add_column :users, :user_name, :string
  end
end
