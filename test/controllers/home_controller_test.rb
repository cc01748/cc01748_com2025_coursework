require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get overview" do
    get home_overview_url
    # Was request successful?
    assert_response :success

    # Was the correct title displayed?
    assert_select 'title', 'Click and Collect'

    # Was the correct header displayed?
    assert_select 'h1', 'Overview'

    # Was the correct layout template used?
    assert_template layout: 'application'
  end




  test "should get orders" do
    get home_orders_url
    # Was request successful?
    assert_response :success

    # Was the correct title displayed?
    assert_select 'title', 'Click and Collect'

    # Was the correct header displayed?
    assert_select 'h1', 'All Orders'

    # Was the correct layout template used?
    assert_template layout: 'application'
  end




  test "should get vieworder" do
    get home_vieworder_url
    # Was request successful?
    assert_response :success

    # Was the correct title displayed?
    assert_select 'title', 'Click and Collect'

     # Was the correct layout template used?
     assert_template layout: 'application'
  end





  test "should get contact" do
    get home_contact_url
    # Was request successful?
    assert_response :success

    # Was the correct title displayed?
    assert_select 'title', 'Click and Collect'

    # Was the correct header displayed?
    assert_select 'h1', 'Contact Site Owners'

     # Was the correct layout template used?
     assert_template layout: 'application'
  end

end
