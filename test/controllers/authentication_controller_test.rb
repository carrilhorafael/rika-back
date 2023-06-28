require "test_helper"

class AuthenticationControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get authentication_login_url
    assert_response :success
  end

  test "should get sign_up" do
    get authentication_sign_up_url
    assert_response :success
  end
end
