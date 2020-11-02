require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get oldorders" do
    get home_oldorders_url
    assert_response :success
  end

end
