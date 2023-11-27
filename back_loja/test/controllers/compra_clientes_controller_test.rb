require "test_helper"

class CompraClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compra_cliente = compra_clientes(:one)
  end

  test "should get index" do
    get compra_clientes_url, as: :json
    assert_response :success
  end

  test "should create compra_cliente" do
    assert_difference('CompraCliente.count') do
      post compra_clientes_url, params: { compra_cliente: { id_memoria_ram: @compra_cliente.id_memoria_ram, id_placa_mae: @compra_cliente.id_placa_mae, id_processador: @compra_cliente.id_processador, id_usuario: @compra_cliente.id_usuario, preco_final: @compra_cliente.preco_final, qtd_memoria: @compra_cliente.qtd_memoria } }, as: :json
    end

    assert_response 201
  end

  test "should show compra_cliente" do
    get compra_cliente_url(@compra_cliente), as: :json
    assert_response :success
  end

  test "should update compra_cliente" do
    patch compra_cliente_url(@compra_cliente), params: { compra_cliente: { id_memoria_ram: @compra_cliente.id_memoria_ram, id_placa_mae: @compra_cliente.id_placa_mae, id_processador: @compra_cliente.id_processador, id_usuario: @compra_cliente.id_usuario, preco_final: @compra_cliente.preco_final, qtd_memoria: @compra_cliente.qtd_memoria } }, as: :json
    assert_response 200
  end

  test "should destroy compra_cliente" do
    assert_difference('CompraCliente.count', -1) do
      delete compra_cliente_url(@compra_cliente), as: :json
    end

    assert_response 204
  end
end
