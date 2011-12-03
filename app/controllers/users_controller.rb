class UsersController < ApplicationController
  def new
    @title = "Sign up"
  end

  def show
    @comentario = params[:seudo]
    @comentarios = User.timeLine(@comentario)
    @seguidores = User.seguidores(@comentario)
    @siguiendo = User.siguiendo(@comentario)

  end
end
