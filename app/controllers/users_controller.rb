class UsersController < ApplicationController
  def new
    @title = "TimeLine"
    @user = session[:nombre]
    @usuario = Usuario.where(:seudonimo => @user).first    
    @comentarios = User.timeLine(@user)
    @seguidores = User.seguidores(@user)
    @siguiendo = User.siguiendo(@user)
  end

  def show
    @title = "@" + params[:seudo].to_s    
    @user = params[:seudo]
    @usuario = Usuario.where(:seudonimo => @user).first
    @comentarios = User.timeLine(@user)
    @seguidores = User.seguidores(@user)
    @siguiendo = User.siguiendo(@user)

  end
end
