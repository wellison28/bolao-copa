class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.string :home
      t.string :guest
      t.date :date

      t.timestamps
    end
  end
end
