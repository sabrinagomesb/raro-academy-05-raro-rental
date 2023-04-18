require "application_system_test_case"

class AluguelsTest < ApplicationSystemTestCase
  setup do
    @aluguel = aluguels(:one)
  end

  test "visiting the index" do
    visit aluguels_url
    assert_selector "h1", text: "Aluguels"
  end

  test "should create aluguel" do
    visit aluguels_url
    click_on "New aluguel"

    fill_in "Cliente", with: @aluguel.cliente_id
    fill_in "Data fim", with: @aluguel.data_fim
    fill_in "Data inicio", with: @aluguel.data_inicio
    fill_in "Valor pago", with: @aluguel.valor_pago
    fill_in "Veiculo", with: @aluguel.veiculo_id
    click_on "Create Aluguel"

    assert_text "Aluguel was successfully created"
    click_on "Back"
  end

  test "should update Aluguel" do
    visit aluguel_url(@aluguel)
    click_on "Edit this aluguel", match: :first

    fill_in "Cliente", with: @aluguel.cliente_id
    fill_in "Data fim", with: @aluguel.data_fim
    fill_in "Data inicio", with: @aluguel.data_inicio
    fill_in "Valor pago", with: @aluguel.valor_pago
    fill_in "Veiculo", with: @aluguel.veiculo_id
    click_on "Update Aluguel"

    assert_text "Aluguel was successfully updated"
    click_on "Back"
  end

  test "should destroy Aluguel" do
    visit aluguel_url(@aluguel)
    click_on "Destroy this aluguel", match: :first

    assert_text "Aluguel was successfully destroyed"
  end
end
