class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string   :name, :image, :thumbnail
      t.text     :description
      t.integer  :min_players, :max_players, :year_published, :playing_time
      t.integer  :creator_id

      t.timestamps
    end
  end
end
