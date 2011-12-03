class PagesController < ApplicationController
  layout 'login'
  def home
    session[:nombre]=nil
    @title = "Inicio"
    @usuario = Usuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usuario }
    end
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def help
    @title = "Help"
  end

  def validar
    @info=params['pages']
    if @info['nombre'] == "" || @info['pass'] == ""
    redirect_to root_path, notice: 'Usuario o clave invalida'
    else
      @usuario = Usuario.where(:seudonimo => @info['nombre'], :pass => @info['pass']).first
      if @usuario.nil?
      redirect_to root_path, notice: 'Usuario o clave invalida'
      else
      session[:nombre] = @usuario.seudonimo
      redirect_to comentarios_path
      end

    end

  # redirec_to root_path
  end

end
