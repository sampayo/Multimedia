class Comentario < ActiveRecord::Base
  def self.buscar(comen,ids)
    @comentario=comen.split(' ')
    @direccion = ''
    @comentario.each do |direccion|
      if direccion[0] == '@'

        @direccion = direccion[1..direccion.length]
        # @user = Usuario.where(:seudonimo => nom ).first
        @usuario = Usuario.where(:seudonimo => @direccion).first
        if !(@usuario.nil?)
          @seguido = Seguidore.where(:usuarios_id => ids, :seguidor_id => @usuario.id).first
          if !(@seguido.nil?)
          @seguido = Seguidore.find(@seguido.id)
          @seguido.simpatia = @seguido.simpatia.to_i + 1
          @seguido.save
          end
        end
      end
    end
  end
end

