require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get overview" do
    get home_overview_path
    # Was request successful?
    assert_response :success

    assert_template layout: 'application'
  end

  test "should get orders" do
    get home_orders_path
    # Was request successful?
    assert_response :success

    assert_template layout: 'application'
  end

  test "should get vieworder" do
    Order.all
    specificOrder = Order.find(1)
    puts specificOrder
    get "/home/vieworder?id=1"
    
    # Was request successful?
    assert_response :success

    

    assert_template layout: 'application'
  end


  test "should get contact" do
    get home_contact_path
    # Was request successful?
    assert_response :success

    assert_template layout: 'application'
  end

  


end
