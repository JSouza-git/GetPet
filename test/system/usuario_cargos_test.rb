require "application_system_test_case"

class UsuarioCargosTest < ApplicationSystemTestCase
  setup do
    @usuario_cargo = usuario_cargos(:one)
  end

  test "visiting the index" do
    visit usuario_cargos_url
    assert_selector "h1", text: "Usuario Cargos"
  end

  test "creating a Usuario cargo" do
    visit usuario_cargos_url
    click_on "New Usuario Cargo"

    fill_in "Cargo", with: @usuario_cargo.cargo_id
    fill_in "Usuario", with: @usuario_cargo.usuario_id
    click_on "Create Usuario cargo"

    assert_text "Usuario cargo was successfully created"
    click_on "Back"
  end

  test "updating a Usuario cargo" do
    visit usuario_cargos_url
    click_on "Edit", match: :first

    fill_in "Cargo", with: @usuario_cargo.cargo_id
    fill_in "Usuario", with: @usuario_cargo.usuario_id
    click_on "Update Usuario cargo"

    assert_text "Usuario cargo was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario cargo" do
    visit usuario_cargos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario cargo was successfully destroyed"
  end
end
