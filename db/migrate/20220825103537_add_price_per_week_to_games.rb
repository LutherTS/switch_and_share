class AddPricePerWeekToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :price_per_week, :integer
  end
end
