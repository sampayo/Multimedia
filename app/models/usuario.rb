class Usuario < ActiveRecord::Base
  validates :nombre    , :presence => { :message => "Es un atributo requerido" }
  validates :seudonimo     , :presence => { :message => "Es un atributo requerido" }, :uniqueness => { :message => "no esta disponible" }
  validates :pass, :presence => { :message => "Es un atributo requerido" }
  
  def self.save(upload)
    name =  upload['file'].original_filename
    directory = "public"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['file'].read) }
  end

end
