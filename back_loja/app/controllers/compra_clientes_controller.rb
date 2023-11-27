class CompraClientesController < ApplicationController
  before_action :set_compra_cliente, only: [:show, :update, :destroy]

  # GET /compra_clientes
  def index
    @compra_clientes = CompraCliente.all

    render json: @compra_clientes
  end

  # GET /compra_clientes/1
  def show
    render json: @compra_cliente
  end

  # POST /compra_clientes
  def create
    @compra_cliente = CompraCliente.new(compra_cliente_params)

    if @compra_cliente.save
      render json: @compra_cliente, status: :created, location: @compra_cliente
    else
      render json: @compra_cliente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /compra_clientes/1
  def update
    if @compra_cliente.update(compra_cliente_params)
      render json: @compra_cliente
    else
      render json: @compra_cliente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /compra_clientes/1
  def destroy
    @compra_cliente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_cliente
      @compra_cliente = CompraCliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def compra_cliente_params
      params.require(:compra_cliente).permit(:id_usuario, :id_processador, :id_placa_mae, :id_memoria_ram, :qtd_memoria, :preco_final)
    end
end
