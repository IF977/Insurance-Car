#http://stackoverflow.com/questions/13216976/what-does-the-initialize-method-in-rails-do <- link suporte
#All objects have a default initialize method which accepts no parameters (you don't need to write one - you get it automagically). If you want your object to do something different in the initialize method, you need to define your own version of it.

#In your example, you are passing a hash to the initialize method which can be used to set the default value of @name and @email.

#You use this such as:
class Cliente < ActiveRecord::Base

    #attr_accessor :cpf,:nome,:endereco,:telefone
    
    #def initialize(attributes = {})
       # @cpf = attributes[:cpf]
      #  @nome = attributes[:nome]
     #   @endereco = attributes[:endereco]
    #    @telefone = attributes[:telefone]
   # end
end