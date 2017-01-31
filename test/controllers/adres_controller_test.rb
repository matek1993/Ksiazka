require 'test_helper'

class AdresControllerTest < ActionController::TestCase
  setup do
    @adre = adres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adre" do
    assert_difference('Adre.count') do
      post :create, adre: { ID: @adre.ID, miejscowosc1: @adre.miejscowosc1, miejscowosc2: @adre.miejscowosc2 }
    end

    assert_redirected_to adre_path(assigns(:adre))
  end

  test "should show adre" do
    get :show, id: @adre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adre
    assert_response :success
  end

  test "should update adre" do
    patch :update, id: @adre, adre: { ID: @adre.ID, miejscowosc1: @adre.miejscowosc1, miejscowosc2: @adre.miejscowosc2 }
    assert_redirected_to adre_path(assigns(:adre))
  end

  test "should destroy adre" do
    assert_difference('Adre.count', -1) do
      delete :destroy, id: @adre
    end

    assert_redirected_to adres_path
  end
end
