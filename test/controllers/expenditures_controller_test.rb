require 'test_helper'

class ExpendituresControllerTest < ActionController::TestCase
  setup do
    @expenditure = expenditures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expenditures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expenditure" do
    assert_difference('Expenditure.count') do
      post :create, expenditure: { amount: @expenditure.amount, campaign_finance_info_id: @expenditure.campaign_finance_info_id, date: @expenditure.date, description: @expenditure.description, entity_id: @expenditure.entity_id, expend_category_id: @expenditure.expend_category_id, expend_type_id: @expenditure.expend_type_id, isaustintxlivingexpense: @expenditure.isaustintxlivingexpense, isbenefitcoh: @expenditure.isbenefitcoh, isreimbursementintended: @expenditure.isreimbursementintended, istraveloutsideoftx: @expenditure.istraveloutsideoftx, payment_method_id: @expenditure.payment_method_id }
    end

    assert_redirected_to expenditure_path(assigns(:expenditure))
  end

  test "should show expenditure" do
    get :show, id: @expenditure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expenditure
    assert_response :success
  end

  test "should update expenditure" do
    patch :update, id: @expenditure, expenditure: { amount: @expenditure.amount, campaign_finance_info_id: @expenditure.campaign_finance_info_id, date: @expenditure.date, description: @expenditure.description, entity_id: @expenditure.entity_id, expend_category_id: @expenditure.expend_category_id, expend_type_id: @expenditure.expend_type_id, isaustintxlivingexpense: @expenditure.isaustintxlivingexpense, isbenefitcoh: @expenditure.isbenefitcoh, isreimbursementintended: @expenditure.isreimbursementintended, istraveloutsideoftx: @expenditure.istraveloutsideoftx, payment_method_id: @expenditure.payment_method_id }
    assert_redirected_to expenditure_path(assigns(:expenditure))
  end

  test "should destroy expenditure" do
    assert_difference('Expenditure.count', -1) do
      delete :destroy, id: @expenditure
    end

    assert_redirected_to expenditures_path
  end
end
