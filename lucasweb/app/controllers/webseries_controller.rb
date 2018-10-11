class WebseriesController < ApplicationController
  before_action :set_webseries, only: [:show, :edit, :update, :destroy]

  # GET /webseries
  # GET /webseries.json
  def index
    @webseries = Webseries.all
  end

  def admin
    if cookies[:login].nil?
      redirect_to controller:"autenticacao", action: "login"
    else
      @webseries = Webseries.all
    end
  end

  # GET /webseries/1
  # GET /webseries/1.json
  def show
  end

  # GET /webseries/new
  def new
    @webseries = Webseries.new
  end

  # GET /webseries/1/edit
  def edit
  end

  # POST /webseries
  # POST /webseries.json
  def create
    @webseries = Webseries.new(webseries_params)

    respond_to do |format|
      if @webseries.save
        format.html { redirect_to @webseries, notice: 'Webserie publicada com sucesso!' }
        format.json { render :show, status: :created, location: @webseries }
      else
        format.html { render :new }
        format.json { render json: @webseries.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webseries/1
  # PATCH/PUT /webseries/1.json
  def update
    respond_to do |format|
      if @webseries.update(webseries_params)
        format.html { redirect_to @webseries, notice: 'Webserie atualizada com sucesso!' }
        format.json { render :show, status: :ok, location: @webseries }
      else
        format.html { render :edit }
        format.json { render json: @webseries.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webseries/1
  # DELETE /webseries/1.json
  def destroy
    @webseries.destroy
    respond_to do |format|
      format.html { redirect_to webseries_index_url, notice: 'Webserie apagada com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webseries
      @webseries = Webseries.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def webseries_params
      params.require(:webseries).permit(:titulo, :playlist)
    end
end
