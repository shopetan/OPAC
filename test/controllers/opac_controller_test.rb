require 'test_helper'

class OpacControllerTest < ActionController::TestCase
  test "should get serch" do
    get :serch
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

end
