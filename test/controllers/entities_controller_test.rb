require 'test_helper'

class EntitiesControllerTest < ActionController::TestCase
  setup do
    @entity = entities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entity" do
    assert_difference('Entity.count') do
      post :create, entity: { address_id: @entity.address_id, employer: @entity.employer, entity_type_id: @entity.entity_type_id, firstname: @entity.firstname, lastname: @entity.lastname, mi: @entity.mi, occupationtitle: @entity.occupationtitle, prefix_id: @entity.prefix_id, suffix: @entity.suffix }
    end

    assert_redirected_to entity_path(assigns(:entity))
  end

  test "should show entity" do
    get :show, id: @entity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entity
    assert_response :success
  end

  test "should update entity" do
    patch :update, id: @entity, entity: { address_id: @entity.address_id, employer: @entity.employer, entity_type_id: @entity.entity_type_id, firstname: @entity.firstname, lastname: @entity.lastname, mi: @entity.mi, occupationtitle: @entity.occupationtitle, prefix_id: @entity.prefix_id, suffix: @entity.suffix }
    assert_redirected_to entity_path(assigns(:entity))
  end

  test "should destroy entity" do
    assert_difference('Entity.count', -1) do
      delete :destroy, id: @entity
    end

    assert_redirected_to entities_path
  end
end