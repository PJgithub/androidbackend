require 'test_helper'

class AccessablemarkersControllerTest < ActionController::TestCase
  setup do
    @accessablemarker = accessablemarkers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessablemarkers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accessablemarker" do
    assert_difference('Accessablemarker.count') do
      post :create, accessablemarker: { accesorid: @accessablemarker.accesorid, markerid: @accessablemarker.markerid }
    end

    assert_redirected_to accessablemarker_path(assigns(:accessablemarker))
  end

  test "should show accessablemarker" do
    get :show, id: @accessablemarker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accessablemarker
    assert_response :success
  end

  test "should update accessablemarker" do
    patch :update, id: @accessablemarker, accessablemarker: { accesorid: @accessablemarker.accesorid, markerid: @accessablemarker.markerid }
    assert_redirected_to accessablemarker_path(assigns(:accessablemarker))
  end

  test "should destroy accessablemarker" do
    assert_difference('Accessablemarker.count', -1) do
      delete :destroy, id: @accessablemarker
    end

    assert_redirected_to accessablemarkers_path
  end
end
