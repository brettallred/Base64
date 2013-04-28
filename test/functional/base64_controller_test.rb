require 'test_helper'

class Base64ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
