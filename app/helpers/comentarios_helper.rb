module ComentariosHelper
  def validar(comen)

    @seguido = Usuario.where(:seudonimo => comen[1..comen.length]).first
    if @seguido.nil?
    @retorno = false
    else
    @retorno = true
    end
    @retorno

  end
end
