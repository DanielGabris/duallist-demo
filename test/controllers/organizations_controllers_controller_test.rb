require 'test_helper'

class OrganizationsControllersControllerTest < ActionController::TestCase
  setup do
    @organizations_controller = organizations_controllers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizations_controllers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organizations_controller" do
    assert_difference('OrganizationsController.count') do
      post :create, organizations_controller: {  }
    end

    assert_redirected_to organizations_controller_path(assigns(:organizations_controller))
  end

  test "should show organizations_controller" do
    get :show, id: @organizations_controller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organizations_controller
    assert_response :success
  end

  test "should update organizations_controller" do
    patch :update, id: @organizations_controller, organizations_controller: {  }
    assert_redirected_to organizations_controller_path(assigns(:organizations_controller))
  end

  test "should destroy organizations_controller" do
    assert_difference('OrganizationsController.count', -1) do
      delete :destroy, id: @organizations_controller
    end

    assert_redirected_to organizations_controllers_path
  end
end
