require 'test_helper'

class GameControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get logic" do
    get :logic
    assert_response :success
  end

  test "should get welcome" do
    get :welcome
    assert_response :success
  end

end
