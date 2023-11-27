class MemoriasRamsController < ApplicationController
  before_action :set_memorias_ram, only: [:show, :update, :destroy]

  # GET /memorias_rams
  def index
    @memorias_rams = MemoriasRam.all

    render json: @memorias_rams
  end

  # GET /memorias_rams/1
  def show
    render json: @memorias_ram
  end

  # POST /memorias_rams
  def create
    @memorias_ram = MemoriasRam.new(memorias_ram_params)

    if @memorias_ram.save
      render json: @memorias_ram, status: :created, location: @memorias_ram
    else
      render json: @memorias_ram.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /memorias_rams/1
  def update
    if @memorias_ram.update(memorias_ram_params)
      render json: @memorias_ram
    else
      render json: @memorias_ram.errors, status: :unprocessable_entity
    end
  end

  # DELETE /memorias_rams/1
  def destroy
    @memorias_ram.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorias_ram
      @memorias_ram = MemoriasRam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def memorias_ram_params
      params.require(:memorias_ram).permit(:nome, :capacidade, :tipo, :velocidade, :preco)
    end
end
