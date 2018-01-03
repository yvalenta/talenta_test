require 'test_helper'

class RegionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @region = regiones(:one)
  end

  test "should get index" do
    get regiones_url
    assert_response :success
  end

  test "should get new" do
    get new_region_url
    assert_response :success
  end

  test "should create region" do
    assert_difference('Region.count') do
      post regiones_url, params: { region: { codigo: @region.codigo, nombre: @region.nombre } }
    end

    assert_redirected_to region_url(Region.last)
  end

  test "should show region" do
    get region_url(@region)
    assert_response :success
  end

  test "should get edit" do
    get edit_region_url(@region)
    assert_response :success
  end

  test "should update region" do
    patch region_url(@region), params: { region: { codigo: @region.codigo, nombre: @region.nombre } }
    assert_redirected_to region_url(@region)
  end

  test "should destroy region" do
    assert_difference('Region.count', -1) do
      delete region_url(@region)
    end

    assert_redirected_to regiones_url
  end
end
