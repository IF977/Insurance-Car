class Revisao < ActiveRecord::Base
include ActiveModel::Validations
include ActiveModel::Conversion
extend ActiveModel::Naming
def red;            "\e[31m#{self}\e[0m" end
    #attr_accessor :codigo,:data,:hora,:km,:relatorio,:autorizacao
    #def initialize(attributes = {})
    #    @codigo=attributes[:codigo]
    #    @data=attributes[:data]
    #    @hora=attributes[:hora]
    #    @km=attributes[:km]
    #    @relatorio=attributes[:relatorio]
    #    @autorizacao= attributes[:autorizacao]
    #end
end