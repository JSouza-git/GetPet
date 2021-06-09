require "test_helper"

class UsuarioCargosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_cargo = usuario_cargos(:one)
  end

  test "should get index" do
    get usuario_cargos_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_cargo_url
    assert_response :success
  end

  test "should create usuario_cargo" do
    assert_difference('UsuarioCargo.count') do
      post usuario_cargos_url, params: { usuario_cargo: { cargo_id: @usuario_cargo.cargo_id, usuario_id: @usuario_cargo.usuario_id } }
    end

    assert_redirected_to usuario_cargo_url(UsuarioCargo.last)
  end

  test "should show usuario_cargo" do
    get usuario_cargo_url(@usuario_cargo)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_cargo_url(@usuario_cargo)
    assert_response :success
  end

  test "should update usuario_cargo" do
    patch usuario_cargo_url(@usuario_cargo), params: { usuario_cargo: { cargo_id: @usuario_cargo.cargo_id, usuario_id: @usuario_cargo.usuario_id } }
    assert_redirected_to usuario_cargo_url(@usuario_cargo)
  end

  test "should destroy usuario_cargo" do
    assert_difference('UsuarioCargo.count', -1) do
      delete usuario_cargo_url(@usuario_cargo)
    end

    assert_redirected_to usuario_cargos_url
  end
end
