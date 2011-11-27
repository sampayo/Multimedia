class PagesController < ApplicationController
  layout 'login'
  def home
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

end
