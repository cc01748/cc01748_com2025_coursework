require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  test 'should save valid customer' do
    # Create new customer instance
    customer = Customer.new

    # Add data to fields 
    customer.firstName = 'Testy'
    customer.lastName = 'Testman'
    customer.email = 'testman@gmail.com'
    customer.contactNumber = '01279321237'

    # Save and assert valid-ness of new customers
    customer.save
    assert customer.valid?
  end
end
