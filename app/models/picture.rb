class Picture < ActiveRecord::Base
  # @@nombre
  has_attached_file :avatar,:url => '/system/:attachment/:id/perfil.jpg'
  
 
end
