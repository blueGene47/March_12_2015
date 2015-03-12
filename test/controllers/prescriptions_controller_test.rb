require 'test_helper'

class PrescriptionsControllerTest < ActionController::TestCase
  setup do
    @prescription = prescriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prescriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prescription" do
    assert_difference('Prescription.count') do
      post :create, prescription: { age: @prescription.age, breed: @prescription.breed, date_of_last_visit: @prescription.date_of_last_visit, pet_name: @prescription.pet_name, type_of_pet: @prescription.type_of_pet, weight: @prescription.weight }
    end

    assert_redirected_to prescription_path(assigns(:prescription))
  end

  test "should show prescription" do
    get :show, id: @prescription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prescription
    assert_response :success
  end

  test "should update prescription" do
    patch :update, id: @prescription, prescription: { age: @prescription.age, breed: @prescription.breed, date_of_last_visit: @prescription.date_of_last_visit, pet_name: @prescription.pet_name, type_of_pet: @prescription.type_of_pet, weight: @prescription.weight }
    assert_redirected_to prescription_path(assigns(:prescription))
  end

  test "should destroy prescription" do
    assert_difference('Prescription.count', -1) do
      delete :destroy, id: @prescription
    end

    assert_redirected_to prescriptions_path
  end
end
