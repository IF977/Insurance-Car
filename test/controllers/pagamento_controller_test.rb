require 'test_helper'

class PagamentoControllerTest < ActionController::TestCase
  test "should get codigo:string" do
    get :codigo:string
    assert_response :success
  end

  test "should get data:string" do
    get :data:string
    assert_response :success
  end

  test "should get hora:string" do
    get :hora:string
    assert_response :success
  end

  test "should get valor:int" do
    get :valor:int
    assert_response :success
  end

end
