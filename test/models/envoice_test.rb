require 'test_helper'
require 'minitest/autorun'

class EnvoiceTest < ActiveSupport::TestCase

  test "should calculate the envoice total" do

    item = Item.new

    item.stub :total, 30 do
      envoice = Envoice.new
      envoice.items << item
      envoice.items << item
      assert_equal 60, envoice.total
    end

  end

end
