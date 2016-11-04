require 'test_helper'

class GuarantorsControllerTest < ActionController::TestCase
  setup do
    @guarantor = guarantors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guarantors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guarantor" do
    assert_difference('Guarantor.count') do
      post :create, guarantor: { amount: @guarantor.amount, entity_id: @guarantor.entity_id, loan_id: @guarantor.loan_id }
    end

    assert_redirected_to guarantor_path(assigns(:guarantor))
  end

  test "should show guarantor" do
    get :show, id: @guarantor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guarantor
    assert_response :success
  end

  test "should update guarantor" do
    patch :update, id: @guarantor, guarantor: { amount: @guarantor.amount, entity_id: @guarantor.entity_id, loan_id: @guarantor.loan_id }
    assert_redirected_to guarantor_path(assigns(:guarantor))
  end

  test "should destroy guarantor" do
    assert_difference('Guarantor.count', -1) do
      delete :destroy, id: @guarantor
    end

    assert_redirected_to guarantors_path
  end
end
