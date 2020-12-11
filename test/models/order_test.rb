require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test 'should save valid order' do
    # Create new item that is associated to orders
    item = Item.new
    item.name = 'Beer'
    item.description = 'Drink it yum'
    item.save

    # Create new customer that is associated to orders
    customer = Customer.new
    customer.firstName = 'Testy'
    customer.lastName = 'Testman'
    customer.email = 'testman@gmail.com'
    customer.contactNumber = '01279321237'
    customer.save


    # Create new order instance
    order = Order.new

    # Add data to fields using item and customer defined earlier
    order.customer_id = customer.id
    order.item_id = item.id
    order.status = 'Picked'
    order.message = 'N/A'
    
    # Save order and assert its validity
    order.save
    assert order.valid?
  end
end
