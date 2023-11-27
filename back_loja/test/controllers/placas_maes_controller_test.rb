require "test_helper"

class PlacasMaesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @placas_mae = placas_maes(:one)
  end

  test "should get index" do
    get placas_maes_url, as: :json
    assert_response :success
  end

  test "should create placas_mae" do
    assert_difference('PlacasMae.count') do
      post placas_maes_url, params: { placas_mae: { capacidade_mem_max: @placas_mae.capacidade_mem_max, compatibilidade_id: @placas_mae.compatibilidade_id, marca_id: @placas_mae.marca_id, nome: @placas_mae.nome, preco: @placas_mae.preco, soquete: @placas_mae.soquete, velocidade: @placas_mae.velocidade } }, as: :json
    end

    assert_response 201
  end

  test "should show placas_mae" do
    get placas_mae_url(@placas_mae), as: :json
    assert_response :success
  end

  test "should update placas_mae" do
    patch placas_mae_url(@placas_mae), params: { placas_mae: { capacidade_mem_max: @placas_mae.capacidade_mem_max, compatibilidade_id: @placas_mae.compatibilidade_id, marca_id: @placas_mae.marca_id, nome: @placas_mae.nome, preco: @placas_mae.preco, soquete: @placas_mae.soquete, velocidade: @placas_mae.velocidade } }, as: :json
    assert_response 200
  end

  test "should destroy placas_mae" do
    assert_difference('PlacasMae.count', -1) do
      delete placas_mae_url(@placas_mae), as: :json
    end

    assert_response 204
  end
end
