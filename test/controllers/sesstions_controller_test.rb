require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sesstions_new_url
    assert_response :success
  end

end
