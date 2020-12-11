require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get overview" do
    get home_overview_path
    # Was request successful?
    assert_response :success

    # Test that correct template is used
    assert_template layout: 'application'

    # Test that title is correct
    assert_select 'title', 'Click and Collect'

    # Test that page heading is correct
    assert_select 'h1' , 'Overview'
  end

  test "should get orders" do
    get home_orders_path
    # Was request successful?
    assert_response :success

    # Test that correct template is used
    assert_template layout: 'application'

    # Test that title is correct
    assert_select 'title', 'Click and Collect'

    # Test that page heading is correct
    assert_select 'h1' , 'All Orders'
  end

  test "should get vieworder" do
    # Test that viewing order with id 1 works
    @order = orders(:one)
    get "/home/vieworder?id=1"
    
    # Was request successful?
    assert_response :success

    # Test that correct template is used
    assert_template layout: 'application'

    # Test that title is correct
    assert_select 'title', 'Click and Collect'
  end


  test "should get contact" do
    get home_contact_path
    # Was request successful?
    assert_response :success

    # Test that correct template is used
    assert_template layout: 'application'

    # Test that title is correct
    assert_select 'title', 'Click and Collect'

    # Test that page heading is correct
    assert_select 'h1' , 'Contact Site Owners'
  end

end
