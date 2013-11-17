require 'test_helper'

class BehaviorsControllerTest < ActionController::TestCase
  setup do
    @behavior = behaviors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:behaviors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create behavior" do
    assert_difference('Behavior.count') do
      post :create, behavior: { behavior: @behavior.behavior, intervention: @behavior.intervention }
    end

    assert_redirected_to behavior_path(assigns(:behavior))
  end

  test "should show behavior" do
    get :show, id: @behavior
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @behavior
    assert_response :success
  end

  test "should update behavior" do
    patch :update, id: @behavior, behavior: { behavior: @behavior.behavior, intervention: @behavior.intervention }
    assert_redirected_to behavior_path(assigns(:behavior))
  end

  test "should destroy behavior" do
    assert_difference('Behavior.count', -1) do
      delete :destroy, id: @behavior
    end

    assert_redirected_to behaviors_path
  end
end
