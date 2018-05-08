class AddRoundToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :round_id, :bigint
  end
end
