class ClienteController < ApplicationController
  def cadastrar
    @cliente = Cliente.new
  end
end
