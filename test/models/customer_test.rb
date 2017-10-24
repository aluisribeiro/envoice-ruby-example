require 'test_helper'
require 'minitest/autorun'

class CustomerTest < ActiveSupport::TestCase

  test "should calculate the customer total" do
      customer = customers(:anderson)
      assert_equal 110, customer.total
  end

end
