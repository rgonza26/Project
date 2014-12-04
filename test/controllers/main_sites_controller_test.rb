require 'test_helper'

class MainSitesControllerTest < ActionController::TestCase
  setup do
    @main_site = main_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_site" do
    assert_difference('MainSite.count') do
      post :create, main_site: {  }
    end

    assert_redirected_to main_site_path(assigns(:main_site))
  end

  test "should show main_site" do
    get :show, id: @main_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_site
    assert_response :success
  end

  test "should update main_site" do
    patch :update, id: @main_site, main_site: {  }
    assert_redirected_to main_site_path(assigns(:main_site))
  end

  test "should destroy main_site" do
    assert_difference('MainSite.count', -1) do
      delete :destroy, id: @main_site
    end

    assert_redirected_to main_sites_path
  end
end
