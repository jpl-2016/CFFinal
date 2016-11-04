require 'test_helper'

class CommitteeNoticesControllerTest < ActionController::TestCase
  setup do
    @committee_notice = committee_notices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:committee_notices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create committee_notice" do
    assert_difference('CommitteeNotice.count') do
      post :create, committee_notice: { campaign_finance_info_id: @committee_notice.campaign_finance_info_id, committee_id: @committee_notice.committee_id }
    end

    assert_redirected_to committee_notice_path(assigns(:committee_notice))
  end

  test "should show committee_notice" do
    get :show, id: @committee_notice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @committee_notice
    assert_response :success
  end

  test "should update committee_notice" do
    patch :update, id: @committee_notice, committee_notice: { campaign_finance_info_id: @committee_notice.campaign_finance_info_id, committee_id: @committee_notice.committee_id }
    assert_redirected_to committee_notice_path(assigns(:committee_notice))
  end

  test "should destroy committee_notice" do
    assert_difference('CommitteeNotice.count', -1) do
      delete :destroy, id: @committee_notice
    end

    assert_redirected_to committee_notices_path
  end
end
