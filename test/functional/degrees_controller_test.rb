require 'test_helper'

class DegreesControllerTest < ActionController::TestCase
  setup do
    @degree = degrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:degrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create degree" do
    assert_difference('Degree.count') do
      post :create, degree: { degree_type: @degree.degree_type, graduated_day: @degree.graduated_day, graduated_month: @degree.graduated_month, graduated_year: @degree.graduated_year, institution: @degree.institution, people_importer_id: @degree.people_importer_id, subject: @degree.subject }
    end

    assert_redirected_to degree_path(assigns(:degree))
  end

  test "should show degree" do
    get :show, id: @degree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @degree
    assert_response :success
  end

  test "should update degree" do
    put :update, id: @degree, degree: { degree_type: @degree.degree_type, graduated_day: @degree.graduated_day, graduated_month: @degree.graduated_month, graduated_year: @degree.graduated_year, institution: @degree.institution, people_importer_id: @degree.people_importer_id, subject: @degree.subject }
    assert_redirected_to degree_path(assigns(:degree))
  end

  test "should destroy degree" do
    assert_difference('Degree.count', -1) do
      delete :destroy, id: @degree
    end

    assert_redirected_to degrees_path
  end
end
