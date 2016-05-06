require 'test_helper'

class ReboqueControllerTest < ActionController::TestCase
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

  test "should get destino:string" do
    get :destino:string
    assert_response :success
  end

  test "should get origem:string" do
    get :origem:string
    assert_response :success
  end

  test "should get distancia:int" do
    get :distancia:int
    assert_response :success
  end

end
