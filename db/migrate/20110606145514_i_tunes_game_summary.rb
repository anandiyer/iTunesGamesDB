class ITunesGameSummary < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      CREATE VIEW iTunesGameSummaries AS
          SELECT "uniqueitunesid"."iTunesId" AS iTunesId,
          (SELECT COUNT("i_tunes_games"."rating") AS count_5_star WHERE "i_tunes_games"."rating" = 5 AND "i_tunes_games"."iTunesId" = "uniqueitunesid"."iTunesId") AS count_5_star,
          (SELECT COUNT("i_tunes_games"."rating") AS count_4_star WHERE "i_tunes_games"."rating" = 4 AND "i_tunes_games"."iTunesId" = "uniqueitunesid"."iTunesId") AS count_4_star,
          (SELECT COUNT("i_tunes_games"."rating") AS count_3_star WHERE "i_tunes_games"."rating" = 3 AND "i_tunes_games"."iTunesId" = "uniqueitunesid"."iTunesId") AS count_3_star,
          (SELECT COUNT("i_tunes_games"."rating") AS count_2_star WHERE "i_tunes_games"."rating" = 2 AND "i_tunes_games"."iTunesId" = "uniqueitunesid"."iTunesId") AS count_2_star,
          (SELECT COUNT("i_tunes_games"."rating") AS count_1_star WHERE "i_tunes_games"."rating" = 1 AND "i_tunes_games"."iTunesId" = "uniqueitunesid"."iTunesId") AS count_1_star
          FROM i_tunes_games, uniqueitunesid
          GROUP BY "i_tunes_games"."iTunesId", "uniqueitunesid"."iTunesId", "i_tunes_games"."rating"
    SQL
  end

  def self.down
    DROP VIEW iTunesGameSummaries
  end
end
