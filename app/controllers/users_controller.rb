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
    # @primera = @user[6];
    # @tama = @user.length
    @usuario = Usuario.where(:seudonimo => @user).first
    if (session[:nombre])
      @usuariosession = Usuario.where(:seudonimo => session[:nombre]).first
      if !(Seguidore.where(:usuarios_id => @usuario.id , :seguidor_id => @usuariosession.id).first.nil?)
      @seguido = false
      else
      @seguido = true
      end

    end
    @comentarios = User.comentarios1(@usuario.id)
    @seguidores = User.seguidores(@user)
    @siguiendo = User.siguiendo(@user)

  end

  def save
    # @title = "@" + params[:seudo].to_s
    @user = params[:user]
    @usuario = Usuario.where(:seudonimo => @user['seudonimo']).first
    @usuariosession = Usuario.where(:seudonimo => session[:nombre]).first
    @seguidor = Seguidore.new(:usuarios_id => @usuario.id , :seguidor_id => @usuariosession.id);
    @seguidor.save;
    redirect_to user_path(@user['seudonimo'])

  end

  def destroy
    @user = params[:user]
    @usuario = Usuario.where(:seudonimo => @user['seudonimo']).first
    @usuariosession = Usuario.where(:seudonimo => session[:nombre]).first
    @seguidor = Seguidore.where(:usuarios_id => @usuario.id , :seguidor_id => @usuariosession.id).first
    @seguidor.destroy
    redirect_to user_path(@user['seudonimo'])
  end

end
