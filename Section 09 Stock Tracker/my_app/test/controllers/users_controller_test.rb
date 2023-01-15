require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get my_portofolio" do
    get users_my_portofolio_url
    assert_response :success
  end
end
