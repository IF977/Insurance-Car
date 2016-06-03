require 'test_helper'

class ReboqueControllerTest < ActionController::TestCase
  test "should get cadreb" do
    get :cadreb
    assert_response :success
  end

end
