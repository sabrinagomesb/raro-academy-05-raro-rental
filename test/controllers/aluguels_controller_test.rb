require "test_helper"

class AluguelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aluguel = aluguels(:one)
  end

  test "should get index" do
    get aluguels_url
    assert_response :success
  end

  test "should get new" do
    get new_aluguel_url
    assert_response :success
  end

  test "should create aluguel" do
    assert_difference("Aluguel.count") do
      post aluguels_url, params: { aluguel: { cliente_id: @aluguel.cliente_id, data_fim: @aluguel.data_fim, data_inicio: @aluguel.data_inicio, valor_pago: @aluguel.valor_pago, veiculo_id: @aluguel.veiculo_id } }
    end

    assert_redirected_to aluguel_url(Aluguel.last)
  end

  test "should show aluguel" do
    get aluguel_url(@aluguel)
    assert_response :success
  end

  test "should get edit" do
    get edit_aluguel_url(@aluguel)
    assert_response :success
  end

  test "should update aluguel" do
    patch aluguel_url(@aluguel), params: { aluguel: { cliente_id: @aluguel.cliente_id, data_fim: @aluguel.data_fim, data_inicio: @aluguel.data_inicio, valor_pago: @aluguel.valor_pago, veiculo_id: @aluguel.veiculo_id } }
    assert_redirected_to aluguel_url(@aluguel)
  end

  test "should destroy aluguel" do
    assert_difference("Aluguel.count", -1) do
      delete aluguel_url(@aluguel)
    end

    assert_redirected_to aluguels_url
  end
end
