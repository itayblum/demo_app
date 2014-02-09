require 'test_helper'

class FoosersControllerTest < ActionController::TestCase
  setup do
    @fooser = foosers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foosers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fooser" do
    assert_difference('Fooser.count') do
      post :create, fooser: { email: @fooser.email, gender: @fooser.gender, name: @fooser.name }
    end

    assert_redirected_to fooser_path(assigns(:fooser))
  end

  test "should show fooser" do
    get :show, id: @fooser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fooser
    assert_response :success
  end

  test "should update fooser" do
    patch :update, id: @fooser, fooser: { email: @fooser.email, gender: @fooser.gender, name: @fooser.name }
    assert_redirected_to fooser_path(assigns(:fooser))
  end

  test "should destroy fooser" do
    assert_difference('Fooser.count', -1) do
      delete :destroy, id: @fooser
    end

    assert_redirected_to foosers_path
  end
end
