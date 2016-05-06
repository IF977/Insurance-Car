require 'test_helper'

class VeiculoControllerTest < ActionController::TestCase
  test "should get placa:string" do
    get :placa:string
    assert_response :success
  end

  test "should get marca:string" do
    get :marca:string
    assert_response :success
  end

  test "should get modelo:string" do
    get :modelo:string
    assert_response :success
  end

end
