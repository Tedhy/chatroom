class MensajesController < ApplicationController
  # GET /mensajes
  # GET /mensajes.json
  def index
    @mensajes = Mensaje.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mensajes }
    end
  end

  # GET /mensajes/1
  # GET /mensajes/1.json
  def show
    @mensaje = Mensaje.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mensaje }
    end
  end

  # GET /mensajes/new
  # GET /mensajes/new.json
  def new
    @mensaje = Mensaje.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mensaje }
    end
  end

  # GET /mensajes/1/edit
  def edit
    @mensaje = Mensaje.find(params[:id])
  end

  # POST /mensajes
  # POST /mensajes.json
  def create
    @mensaje = Mensaje.new(params[:mensaje])

    respond_to do |format|
      if @mensaje.save
        format.html { redirect_to @mensaje, notice: 'Mensaje was successfully created.' }
        format.json { render json: @mensaje, status: :created, location: @mensaje }
      else
        format.html { render action: "new" }
        format.json { render json: @mensaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mensajes/1
  # PUT /mensajes/1.json
  def update
    @mensaje = Mensaje.find(params[:id])

    respond_to do |format|
      if @mensaje.update_attributes(params[:mensaje])
        format.html { redirect_to @mensaje, notice: 'Mensaje was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mensaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mensajes/1
  # DELETE /mensajes/1.json
  def destroy
    @mensaje = Mensaje.find(params[:id])
    @mensaje.destroy

    respond_to do |format|
      format.html { redirect_to mensajes_url }
      format.json { head :ok }
    end
  end
end
