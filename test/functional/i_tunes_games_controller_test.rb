require 'test_helper'

class ITunesGamesControllerTest < ActionController::TestCase
  setup do
    @i_tunes_game = i_tunes_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:i_tunes_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create i_tunes_game" do
    assert_difference('ITunesGame.count') do
      post :create, :i_tunes_game => @i_tunes_game.attributes
    end

    assert_redirected_to i_tunes_game_path(assigns(:i_tunes_game))
  end

  test "should show i_tunes_game" do
    get :show, :id => @i_tunes_game.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @i_tunes_game.to_param
    assert_response :success
  end

  test "should update i_tunes_game" do
    put :update, :id => @i_tunes_game.to_param, :i_tunes_game => @i_tunes_game.attributes
    assert_redirected_to i_tunes_game_path(assigns(:i_tunes_game))
  end

  test "should destroy i_tunes_game" do
    assert_difference('ITunesGame.count', -1) do
      delete :destroy, :id => @i_tunes_game.to_param
    end

    assert_redirected_to i_tunes_games_path
  end
end
