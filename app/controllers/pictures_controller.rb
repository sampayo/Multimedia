class PicturesController < ApplicationController
    def index
    @foto = Picture.all
  end

  def show
    @foto = Picture.find(params[:id])
  end
  
    def new
    @user = session[:nombre]
    @usuario = Usuario.where(:seudonimo => @user).first
    @foto = Picture.new
  end
  
  def create
    # Picture.setnombre('perfil')
    @foto = Picture.create( params[:picture])
     redirect_to @foto
  end
  
   def edit
    @foto = Picture.find(params[:id])
  end

  def update
    @foto = Picture.find(params[:id])
    if @foto.update_attributes(params[:image])
    redirect_to @foto
    end
  end
  
  
end

