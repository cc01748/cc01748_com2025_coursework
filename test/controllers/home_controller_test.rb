require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get overview" do
    get "/home/overview"
    # Was request successful?
    assert_response :success

    assert_template layout: 'application'
  end

  


end
