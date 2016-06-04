require 'test_helper'

class RevisaoControllerTest < ActionController::TestCase
  test "should get cadrev" do
    get :cadrev
    assert_response :success
  end

end
