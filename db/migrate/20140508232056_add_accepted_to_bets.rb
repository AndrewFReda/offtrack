class AddAcceptedToBets < ActiveRecord::Migration
  def change
    add_column :bets, :accepted, :boolean
  end
end
