require 'test_helper'

class SiteEventsControllerTest < ActionController::TestCase
  setup do
    @site_event = site_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_event" do
    assert_difference('SiteEvent.count') do
      post :create, site_event: { date: @site_event.date, description: @site_event.description, image: @site_event.image, name: @site_event.name }
    end

    assert_redirected_to site_event_path(assigns(:site_event))
  end

  test "should show site_event" do
    get :show, id: @site_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_event
    assert_response :success
  end

  test "should update site_event" do
    patch :update, id: @site_event, site_event: { date: @site_event.date, description: @site_event.description, image: @site_event.image, name: @site_event.name }
    assert_redirected_to site_event_path(assigns(:site_event))
  end

  test "should destroy site_event" do
    assert_difference('SiteEvent.count', -1) do
      delete :destroy, id: @site_event
    end

    assert_redirected_to site_events_path
  end
end
