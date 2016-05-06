require 'test_helper'

class ClienteControllerTest < ActionController::TestCase
  test "should get cpf:string" do
    get :cpf:string
    assert_response :success
  end

  test "should get nome:string" do
    get :nome:string
    assert_response :success
  end

  test "should get endereco:string" do
    get :endereco:string
    assert_response :success
  end

  test "should get telefone:string" do
    get :telefone:string
    assert_response :success
  end

end
