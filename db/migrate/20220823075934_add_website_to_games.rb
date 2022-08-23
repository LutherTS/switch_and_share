class AddWebsiteToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :website, :string
  end
end
