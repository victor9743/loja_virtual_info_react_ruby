class ProcessadorsController < ApplicationController
  before_action :set_processador, only: [:show, :update, :destroy]

  # GET /processadors
  def index
    @processadors = Processador.all

    render json: @processadors
  end

  # GET /processadors/1
  def show
    render json: @processador
  end

  # POST /processadors
  def create
    @processador = Processador.new(processador_params)

    if @processador.save
      render json: @processador, status: :created, location: @processador
    else
      render json: @processador.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /processadors/1
  def update
    if @processador.update(processador_params)
      render json: @processador
    else
      render json: @processador.errors, status: :unprocessable_entity
    end
  end

  # DELETE /processadors/1
  def destroy
    @processador.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processador
      @processador = Processador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def processador_params
      params.require(:processador).permit(:nome, :marca_id, :soquete, :velocidade, :preco)
    end
end
