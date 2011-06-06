class ITunesGameSummary < ActiveRecord::Base
  belongs_to :ITunesGame
    set_table_name "itunesgamesummaries"
end