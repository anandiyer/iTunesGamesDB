class CreateITunesGames < ActiveRecord::Migration
  def self.up
    create_table :i_tunes_games do |t|
      t.integer :iTunesId
      t.integer :rating
      t.integer :uid
      t.string :username
      t.integer :helpful
      t.integer :numhelpful
      t.text :review

      t.timestamps
    end
  end

  def self.down
    drop_table :i_tunes_games
  end
end
