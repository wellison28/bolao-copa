class CreateBets < ActiveRecord::Migration[5.1]
  def change
    create_table :bets do |t|
      t.integer :goals_home
      t.integer :goals_guest
      t.references :user, foreign_key: true
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
