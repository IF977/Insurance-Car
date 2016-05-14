require 'test_helper'

class ClienteControllerTest < ActionController::TestCase
  test "should get cadastrar" do
    get :cadastrar
    assert_response :success
  end

end
