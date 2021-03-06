require 'test_helper'

class InfosControllerTest < ActionController::TestCase
  setup do
    @info = infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info" do
    assert_difference('Info.count') do
      post :create, info: { birthplace: @info.birthplace, born_day: @info.born_day, born_month: @info.born_month, born_year: @info.born_year, tag_list: @info.tag_list, twitter_username: @info.twitter_username }
    end

    assert_redirected_to info_path(assigns(:info))
  end

  test "should show info" do
    get :show, id: @info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info
    assert_response :success
  end

  test "should update info" do
    put :update, id: @info, info: { birthplace: @info.birthplace, born_day: @info.born_day, born_month: @info.born_month, born_year: @info.born_year, tag_list: @info.tag_list, twitter_username: @info.twitter_username }
    assert_redirected_to info_path(assigns(:info))
  end

  test "should destroy info" do
    assert_difference('Info.count', -1) do
      delete :destroy, id: @info
    end

    assert_redirected_to infos_path
  end
end
