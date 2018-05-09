class CreateBets < ActiveRecord::Migration[5.1]
  def change
    create_table :bets do |t|
      t.integer :goal_home
      t.integer :goal_guest
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
