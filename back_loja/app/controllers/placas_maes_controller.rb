class PlacasMaesController < ApplicationController
  before_action :set_placas_mae, only: [:show, :update, :destroy]

  # GET /placas_maes
  def index
    @placas_maes = PlacasMae.all

    render json: @placas_maes
  end

  # GET /placas_maes/1
  def show
    render json: @placas_mae
  end

  # POST /placas_maes
  def create
    @placas_mae = PlacasMae.new(placas_mae_params)

    if @placas_mae.save
      render json: @placas_mae, status: :created, location: @placas_mae
    else
      render json: @placas_mae.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /placas_maes/1
  def update
    if @placas_mae.update(placas_mae_params)
      render json: @placas_mae
    else
      render json: @placas_mae.errors, status: :unprocessable_entity
    end
  end

  # DELETE /placas_maes/1
  def destroy
    @placas_mae.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_placas_mae
      @placas_mae = PlacasMae.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def placas_mae_params
      params.require(:placas_mae).permit(:nome, :marca_id, :soquete, :velocidade, :compatibilidade_id, :capacidade_mem_max, :preco)
    end
end
