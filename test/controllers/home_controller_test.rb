require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get overview" do
    get home_overview_path
    # Was request successful?
    assert_response :success

    # Test that correct template is used
    assert_template layout: 'application'
  end

  test "should get orders" do
    get home_orders_path
    # Was request successful?
    assert_response :success

    # Test that correct template is used
    assert_template layout: 'application'
  end

  test "should get vieworder" do
    # Test that viewing order with id 1 works
    @order = orders(:one)
    get "/home/vieworder?id=1"
    
    # Was request successful?
    assert_response :success

    # Test that correct template is used
    assert_template layout: 'application'
  end


  test "should get contact" do
    get home_contact_path
    # Was request successful?
    assert_response :success

    # Test that correct template is used
    assert_template layout: 'application'
  end

  


end
