require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get order" do
    get home_order_url
    assert_response :success
  end

end
