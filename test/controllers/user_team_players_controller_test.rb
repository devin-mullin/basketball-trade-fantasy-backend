require "test_helper"

class UserTeamPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_team_player = user_team_players(:one)
  end

  test "should get index" do
    get user_team_players_url, as: :json
    assert_response :success
  end

  test "should create user_team_player" do
    assert_difference('UserTeamPlayer.count') do
      post user_team_players_url, params: { user_team_player: { player_id: @user_team_player.player_id, user_team_id: @user_team_player.user_team_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_team_player" do
    get user_team_player_url(@user_team_player), as: :json
    assert_response :success
  end

  test "should update user_team_player" do
    patch user_team_player_url(@user_team_player), params: { user_team_player: { player_id: @user_team_player.player_id, user_team_id: @user_team_player.user_team_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_team_player" do
    assert_difference('UserTeamPlayer.count', -1) do
      delete user_team_player_url(@user_team_player), as: :json
    end

    assert_response 204
  end
end
