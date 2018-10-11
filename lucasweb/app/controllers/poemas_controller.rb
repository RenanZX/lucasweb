class PoemasController < ApplicationController
  before_action :set_poema, only: [:show, :edit, :update, :destroy]

  # GET /poemas
  # GET /poemas.json
  def index
    @poemas = Poema.all
  end

  def admin
    if cookies[:login].nil?
      redirect_to controller:"autenticacao", action: "login"
    else
      @poemas = Poema.all
    end
  end

  # GET /poemas/1
  # GET /poemas/1.json
  def show
  end

  # GET /poemas/new
  def new
    @poema = Poema.new
  end

  # GET /poemas/1/edit
  def edit
  end

  # POST /poemas
  # POST /poemas.json
  def create
    @poema = Poema.new(poema_params)

    respond_to do |format|
      if @poema.save
        format.html { redirect_to @poema, notice: 'Poema publicado com sucesso!' }
        format.json { render :show, status: :created, location: @poema }
      else
        format.html { render :new }
        format.json { render json: @poema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poemas/1
  # PATCH/PUT /poemas/1.json
  def update
    respond_to do |format|
      if @poema.update(poema_params)
        format.html { redirect_to @poema, notice: 'Poema atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @poema }
      else
        format.html { render :edit }
        format.json { render json: @poema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poemas/1
  # DELETE /poemas/1.json
  def destroy
    @poema.destroy
    respond_to do |format|
      format.html { redirect_to poemas_url, notice: 'Poema apagado com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poema
      @poema = Poema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poema_params
      params.require(:poema).permit(:titulo, :corpo)
    end
end
