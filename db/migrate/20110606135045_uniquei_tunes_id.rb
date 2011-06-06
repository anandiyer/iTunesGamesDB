class UniqueiTunesId < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      CREATE VIEW UniqueiTunesId AS
      SELECT DISTINCT "i_tunes_games"."iTunesId" 
      FROM "i_tunes_games"
      GROUP BY "i_tunes_games"."iTunesId"
    SQL
  end

  def self.down
    DROP VIEW UniqueiTunesId
  end
end
