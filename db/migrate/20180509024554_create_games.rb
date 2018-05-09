class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :home
      t.string :guest
      t.integer :goal_home
      t.integer :goal_guest
      t.date :date

      t.timestamps
    end
  end
end
