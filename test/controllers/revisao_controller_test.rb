require 'test_helper'

class RevisaoControllerTest < ActionController::TestCase
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

  test "should get km:string" do
    get :km:string
    assert_response :success
  end

  test "should get relatorio:string" do
    get :relatorio:string
    assert_response :success
  end

  test "should get autorizacao:int" do
    get :autorizacao:int
    assert_response :success
  end

end
