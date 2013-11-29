require 'test_helper'

class MstudentsControllerTest < ActionController::TestCase
  setup do
    @mstudent = mstudents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mstudents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mstudent" do
    assert_difference('Mstudent.count') do
      post :create, mstudent: { fname: @mstudent.fname, lname: @mstudent.lname }
    end

    assert_redirected_to mstudent_path(assigns(:mstudent))
  end

  test "should show mstudent" do
    get :show, id: @mstudent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mstudent
    assert_response :success
  end

  test "should update mstudent" do
    patch :update, id: @mstudent, mstudent: { fname: @mstudent.fname, lname: @mstudent.lname }
    assert_redirected_to mstudent_path(assigns(:mstudent))
  end

  test "should destroy mstudent" do
    assert_difference('Mstudent.count', -1) do
      delete :destroy, id: @mstudent
    end

    assert_redirected_to mstudents_path
  end
end
