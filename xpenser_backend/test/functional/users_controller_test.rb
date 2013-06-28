require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get validate_user_name" do
    get :validate_user_name
    assert_response :success
  end

end
