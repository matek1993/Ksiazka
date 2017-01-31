require 'test_helper'

class TelefonsControllerTest < ActionController::TestCase
  setup do
    @telefon = telefons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefon" do
    assert_difference('Telefon.count') do
      post :create, telefon: { ID: @telefon.ID, numer: @telefon.numer }
    end

    assert_redirected_to telefon_path(assigns(:telefon))
  end

  test "should show telefon" do
    get :show, id: @telefon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telefon
    assert_response :success
  end

  test "should update telefon" do
    patch :update, id: @telefon, telefon: { ID: @telefon.ID, numer: @telefon.numer }
    assert_redirected_to telefon_path(assigns(:telefon))
  end

  test "should destroy telefon" do
    assert_difference('Telefon.count', -1) do
      delete :destroy, id: @telefon
    end

    assert_redirected_to telefons_path
  end
end
