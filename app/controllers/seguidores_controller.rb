class SeguidoresController < ApplicationController
  # GET /seguidores
  # GET /seguidores.json
  def index
    @seguidores = Seguidore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seguidores }
    end
  end

  # GET /seguidores/1
  # GET /seguidores/1.json
  def show
    @seguidore = Seguidore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seguidore }
    end
  end

  # GET /seguidores/new
  # GET /seguidores/new.json
  def new
    @seguidore = Seguidore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seguidore }
    end
  end

  # GET /seguidores/1/edit
  def edit
    @seguidore = Seguidore.find(params[:id])
  end

  # POST /seguidores
  # POST /seguidores.json
  def create
    @seguidore = Seguidore.new(params[:seguidore])

    respond_to do |format|
      if @seguidore.save
        format.html { redirect_to @seguidore, notice: 'Seguidore was successfully created.' }
        format.json { render json: @seguidore, status: :created, location: @seguidore }
      else
        format.html { render action: "new" }
        format.json { render json: @seguidore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seguidores/1
  # PUT /seguidores/1.json
  def update
    @seguidore = Seguidore.find(params[:id])

    respond_to do |format|
      if @seguidore.update_attributes(params[:seguidore])
        format.html { redirect_to @seguidore, notice: 'Seguidore was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @seguidore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seguidores/1
  # DELETE /seguidores/1.json
  def destroy
    @seguidore = Seguidore.find(params[:id])
    @seguidore.destroy

    respond_to do |format|
      format.html { redirect_to seguidores_url }
      format.json { head :ok }
    end
  end
end
