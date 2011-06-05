class CreateAveragesView < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      CREATE VIEW averages AS
      SELECT "i_tunes_games"."iTunesId" AS iTunesId, AVG("i_tunes_games"."rating") AS avg_rating, COUNT(*) AS count 
      FROM "i_tunes_games"
      GROUP BY "i_tunes_games"."iTunesId"
    SQL
  end

  def self.down
    DROP VIEW averages
  end
end
