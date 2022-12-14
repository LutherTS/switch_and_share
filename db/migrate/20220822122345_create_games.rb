class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :category
      t.string :condition
      t.string :platform
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
