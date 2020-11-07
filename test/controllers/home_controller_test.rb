require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get overiew" do
    get home_overview_url
    assert_response :success
  end

end
