require 'test_helper'

class PagamentoControllerTest < ActionController::TestCase
  test "should get registrar" do
    get :registrar
    assert_response :success
  end

end
