require 'test_helper'

class TurtlesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get walk" do
    get :walk
    assert_response :success
  end

  test "should get sleep" do
    get :sleep
    assert_response :success
  end

  test "should get push" do
    get :push
    assert_response :success
  end

  test "should get hide" do
    get :hide
    assert_response :success
  end

  test "should get appear" do
    get :appear
    assert_response :success
  end

end
