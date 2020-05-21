require 'test_helper'

class CitizensControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get citizens_register_url
    assert_response :success
  end

  test "should get signin" do
    get citizens_signin_url
    assert_response :success
  end

  test "should get edit" do
    get citizens_edit_url
    assert_response :success
  end

end
