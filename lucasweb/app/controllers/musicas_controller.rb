class MusicasController < ApplicationController
  before_action :set_musica, only: [:show, :edit, :update, :destroy]

  # GET /musicas
  # GET /musicas.json
  def index
    @musicas = Musica.all
  end

  def admin
    if cookies[:login].nil?
      redirect_to controller:"autenticacao", action: "login"
    else
      @musicas = Musica.all
    end
  end

  # GET /musicas/1
  # GET /musicas/1.json
  def show
  end

  # GET /musicas/new
  def new
    @musica = Musica.new
  end

  # GET /musicas/1/edit
  def edit
  end

  # POST /musicas
  # POST /musicas.json
  def create
    @musica = Musica.new(musica_params)

    respond_to do |format|
      if @musica.save
        format.html { redirect_to @musica, notice: 'Álbum publicada com sucesso!' }
        format.json { render :show, status: :created, location: @musica }
      else
        format.html { render :new }
        format.json { render json: @musica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicas/1
  # PATCH/PUT /musicas/1.json
  def update
    respond_to do |format|
      if @musica.update(musica_params)
        format.html { redirect_to @musica, notice: 'Álbum atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @musica }
      else
        format.html { render :edit }
        format.json { render json: @musica.errors, status: :unprocessable_entity }
      end
    end
  end

  def remove_audio
    set_musica
    @musica.audios.each do |music| 
      if music.filename == params[:music_name]
        music.purge
      end
    end
    redirect_back(fallback_location: root_path)
  end

  # DELETE /musicas/1
  # DELETE /musicas/1.json
  def destroy
    @musica.audios.purge
    @musica.destroy
    respond_to do |format|
      format.html { redirect_to musicas_url, notice: 'Álbum apagado com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musica
      @musica = Musica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musica_params
      params.require(:musica).permit(:titulo, :image, audios: [])
    end
end
