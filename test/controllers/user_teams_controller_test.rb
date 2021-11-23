require "test_helper"

class UserTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_team = user_teams(:one)
  end

  test "should get index" do
    get user_teams_url, as: :json
    assert_response :success
  end

  test "should create user_team" do
    assert_difference('UserTeam.count') do
      post user_teams_url, params: { user_team: { user_id: @user_team.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_team" do
    get user_team_url(@user_team), as: :json
    assert_response :success
  end

  test "should update user_team" do
    patch user_team_url(@user_team), params: { user_team: { user_id: @user_team.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_team" do
    assert_difference('UserTeam.count', -1) do
      delete user_team_url(@user_team), as: :json
    end

    assert_response 204
  end
end
