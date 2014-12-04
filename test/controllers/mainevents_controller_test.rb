require 'test_helper'

class MaineventsControllerTest < ActionController::TestCase
  setup do
    @mainevent = mainevents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mainevents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mainevent" do
    assert_difference('Mainevent.count') do
      post :create, mainevent: { date: @mainevent.date, description: @mainevent.description, image: @mainevent.image, name: @mainevent.name }
    end

    assert_redirected_to mainevent_path(assigns(:mainevent))
  end

  test "should show mainevent" do
    get :show, id: @mainevent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mainevent
    assert_response :success
  end

  test "should update mainevent" do
    patch :update, id: @mainevent, mainevent: { date: @mainevent.date, description: @mainevent.description, image: @mainevent.image, name: @mainevent.name }
    assert_redirected_to mainevent_path(assigns(:mainevent))
  end

  test "should destroy mainevent" do
    assert_difference('Mainevent.count', -1) do
      delete :destroy, id: @mainevent
    end

    assert_redirected_to mainevents_path
  end
end
