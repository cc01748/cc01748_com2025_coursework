require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get overview" do
    get home_contact_url
    # Was request successful?
    assert_response :success


  end


end
