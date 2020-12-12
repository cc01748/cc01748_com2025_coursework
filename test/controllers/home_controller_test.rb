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

    # Test that correct order status data displayed using fixtures data
    assert_select 'p', 'Collected orders - 1'
    assert_select 'p', 'Unpicked orders - 1'
    assert_select 'p', 'Picked orders - 1'
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

    # Test that order table is displayed correctly
    assert_select 'th', 'NO.'
    assert_select 'th', 'First name'
    assert_select 'th', 'Last Name'
    assert_select 'th', 'Status'
    assert_select 'th', 'Date'
    assert_select 'th', 'Message'

    # Test that order details are displayed correctly in table
    @order = orders(:one)
    @customer = customers(:one)
    assert_select 'td', @order.id.to_s
    assert_select 'td', @customer.firstName
    assert_select 'td', @customer.lastName
    assert_select 'td', @order.status
    assert_select 'td', @order.message

    @order = orders(:two)
    @customer = customers(:two)
    assert_select 'td', @order.id.to_s
    assert_select 'td', @customer.firstName
    assert_select 'td', @customer.lastName
    assert_select 'td', @order.status
    assert_select 'td', @order.message

    @order = orders(:three)
    @customer = customers(:three)
    assert_select 'td', @order.id.to_s
    assert_select 'td', @customer.firstName
    assert_select 'td', @customer.lastName
    assert_select 'td', @order.status
    assert_select 'td', @order.message
  end

  test "should get vieworder" do
    # Test that viewing order with id 1 works
    @order = orders(:one)
    @customer = customers(:one)
    get '/home/vieworder?id=1'
    # Was request successful?
    assert_response :success

    # Check that data relevant to order passed to URL is displayed correctly
    assert_select 'td', @order.id.to_s
    assert_select 'td', @customer.firstName
    assert_select 'td', @customer.lastName
    assert_select 'td', @order.status
    assert_select 'td', @order.message
    assert_select 'td', @customer.email
    assert_select 'td', @customer.contactNumber

    # Test that viewing order with id 2 works
    @order = orders(:two)
    @customer = customers(:two)
    get '/home/vieworder?id=2'
    # Was request successful?
    assert_response :success

    # Check that data relevant to order passed to URL is displayed correctly
    assert_select 'td', @order.id.to_s
    assert_select 'td', @customer.firstName
    assert_select 'td', @customer.lastName
    assert_select 'td', @order.status
    assert_select 'td', @order.message
    assert_select 'td', @customer.email
    assert_select 'td', @customer.contactNumber

    # Test that viewing order with id 3 works
    @order = orders(:three)
    @customer = customers(:three)
    get '/home/vieworder?id=3'
    # Was request successful?
    assert_response :success

    # Check that data relevant to order passed to URL is displayed correctly
    assert_select 'td', @order.id.to_s
    assert_select 'td', @customer.firstName
    assert_select 'td', @customer.lastName
    assert_select 'td', @order.status
    assert_select 'td', @order.message
    assert_select 'td', @customer.email
    assert_select 'td', @customer.contactNumber

    # Test that correct template is used
    assert_template layout: 'application'

    # Test that title is correct
    assert_select 'title', 'Click and Collect'

    # Test that vieworder table is displayed correctly
    assert_select 'th', 'NO.'
    assert_select 'th', 'First name'
    assert_select 'th', 'Last Name'
    assert_select 'th', 'Status'
    assert_select 'th', 'Date'
    assert_select 'th', 'Message'
    assert_select 'th', 'Email'
    assert_select 'th', 'Contact Number'
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
