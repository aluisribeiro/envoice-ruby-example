require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  test "should calculate the total" do
    apple = Product.new(price: 20)
    item = Item.new(product: apple, amount: 10)
    assert_equal 200, item.total
  end

  test "should validate the item" do
    item = Item.new(product: Product.new, envoice: Envoice.new, amount: 2)
    assert item.valid?
  end

  test "should validate item without amount" do
    item = Item.new(product: Product.new, envoice: Envoice.new)
    refute item.valid?
  end



end
