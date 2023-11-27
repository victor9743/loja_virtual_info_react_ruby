require "test_helper"

class ProcessadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @processador = processadors(:one)
  end

  test "should get index" do
    get processadors_url, as: :json
    assert_response :success
  end

  test "should create processador" do
    assert_difference('Processador.count') do
      post processadors_url, params: { processador: { marca_id: @processador.marca_id, nome: @processador.nome, preco: @processador.preco, soquete: @processador.soquete, velocidade: @processador.velocidade } }, as: :json
    end

    assert_response 201
  end

  test "should show processador" do
    get processador_url(@processador), as: :json
    assert_response :success
  end

  test "should update processador" do
    patch processador_url(@processador), params: { processador: { marca_id: @processador.marca_id, nome: @processador.nome, preco: @processador.preco, soquete: @processador.soquete, velocidade: @processador.velocidade } }, as: :json
    assert_response 200
  end

  test "should destroy processador" do
    assert_difference('Processador.count', -1) do
      delete processador_url(@processador), as: :json
    end

    assert_response 204
  end
end
