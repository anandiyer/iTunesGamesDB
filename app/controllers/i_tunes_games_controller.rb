class ITunesGamesController < ApplicationController
  # GET /i_tunes_games
  # GET /i_tunes_games.xml
  def index
    @i_tunes_games = ITunesGame.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @i_tunes_games }
      format.json  { render :json  => @i_tunes_games }
    end
  end

  # GET /i_tunes_games/1
  # GET /i_tunes_games/1.xml
  def show
    @i_tunes_game = ITunesGame.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @i_tunes_game }
      format.json  { render :json => @i_tunes_game }
    end
  end

  # GET /i_tunes_games/new
  # GET /i_tunes_games/new.xml
  def new
    @i_tunes_game = ITunesGame.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @i_tunes_game }
      format.json  { render :json => @i_tunes_game }
    end
  end

  # POST /i_tunes_games
  # POST /i_tunes_games.xml
  def create
    @i_tunes_game = ITunesGame.new(params[:i_tunes_game])

    respond_to do |format|
      if @i_tunes_game.save
        format.html { redirect_to(@i_tunes_game, :notice => 'iTunes game was successfully created.') }
        format.xml  { render :xml => @i_tunes_game, :status => :created, :location => @i_tunes_game }
        format.json  { render :json => @i_tunes_game, :status => :created, :location => @i_tunes_game }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @i_tunes_game.errors, :status => :unprocessable_entity }
        format.json  { render :json => @i_tunes_game.errors, :status => :unprocessable_entity }
      end
    end
  end
end