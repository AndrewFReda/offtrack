class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.string :currency
      t.float :quantity
      t.string :description
      t.integer :creator_id
      t.integer :opponent_id
      t.datetime :due_date

      t.timestamps
    end
  end
end
