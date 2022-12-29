require 'test_helper'

class ListadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listado = listados(:one)
  end

  test "should get index" do
    get listados_url
    assert_response :success
  end

  test "should get new" do
    get new_listado_url
    assert_response :success
  end

  test "should create listado" do
    assert_difference('Listado.count') do
      post listados_url, params: { listado: { codigo: @listado.codigo, fecha_fab: @listado.fecha_fab, marca: @listado.marca, modelo: @listado.modelo, observacion: @listado.observacion, precio: @listado.precio } }
    end

    assert_redirected_to listado_url(Listado.last)
  end

  test "should show listado" do
    get listado_url(@listado)
    assert_response :success
  end

  test "should get edit" do
    get edit_listado_url(@listado)
    assert_response :success
  end

  test "should update listado" do
    patch listado_url(@listado), params: { listado: { codigo: @listado.codigo, fecha_fab: @listado.fecha_fab, marca: @listado.marca, modelo: @listado.modelo, observacion: @listado.observacion, precio: @listado.precio } }
    assert_redirected_to listado_url(@listado)
  end

  test "should destroy listado" do
    assert_difference('Listado.count', -1) do
      delete listado_url(@listado)
    end

    assert_redirected_to listados_url
  end
end
