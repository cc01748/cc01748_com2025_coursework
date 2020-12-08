require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test 'should save valid item' do
    # Create new item instance
    item = Item.new

    # Add data to fields
    item.name = 'Beer'
    item.description = 'Drink it yum'
    
    # Save item and assert its validity
    item.save
    assert item.valid?
  end
end
