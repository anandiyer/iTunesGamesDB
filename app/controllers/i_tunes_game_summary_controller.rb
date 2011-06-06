class ITunesGameSummaryController < ApplicationController

  def index
    @iTunesGameSummaries = ITunesGameSummary.all(:limit => 50)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @iTunesGameSummaries }
      format.json  { render :json  => @iTunesGameSummaries }
    end
  end
  
  def show
    @iTunesGameSummary = iTunesGameSummary.find(:conditions => "\"i_tunes_game_summary\".\"iTunesId\" = " + params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @iTunesGameSummary }
      format.json  { render :json  => @iTunesGameSummary }
    end
  end
end