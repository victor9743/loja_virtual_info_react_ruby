require "test_helper"

class MemoriasRamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memorias_ram = memorias_rams(:one)
  end

  test "should get index" do
    get memorias_rams_url, as: :json
    assert_response :success
  end

  test "should create memorias_ram" do
    assert_difference('MemoriasRam.count') do
      post memorias_rams_url, params: { memorias_ram: { capacidade: @memorias_ram.capacidade, nome: @memorias_ram.nome, preco: @memorias_ram.preco, tipo: @memorias_ram.tipo, velocidade: @memorias_ram.velocidade } }, as: :json
    end

    assert_response 201
  end

  test "should show memorias_ram" do
    get memorias_ram_url(@memorias_ram), as: :json
    assert_response :success
  end

  test "should update memorias_ram" do
    patch memorias_ram_url(@memorias_ram), params: { memorias_ram: { capacidade: @memorias_ram.capacidade, nome: @memorias_ram.nome, preco: @memorias_ram.preco, tipo: @memorias_ram.tipo, velocidade: @memorias_ram.velocidade } }, as: :json
    assert_response 200
  end

  test "should destroy memorias_ram" do
    assert_difference('MemoriasRam.count', -1) do
      delete memorias_ram_url(@memorias_ram), as: :json
    end

    assert_response 204
  end
end
