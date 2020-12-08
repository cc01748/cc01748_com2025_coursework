require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test 'should save valid order' do
    # Create new order instance
    order = Order.new

    # Add data to fields
    order.customer_id = 2
    order.item_id = 2
    order.status = 'Picked'
    order.message = 'N/A'
    
    # Save order and assert its validity
    order.save
    assert order.valid?
  end
end
