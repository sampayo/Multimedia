class Usuario < ActiveRecord::Base
  validates :nombre    , :presence => { :message => "Es un atributo requerido" }
  validates :seudonimo     , :presence => { :message => "Es un atributo requerido" }, :uniqueness => { :message => "no esta disponible" } 
  validates :pass, :presence => { :message => "Es un atributo requerido" }
end
