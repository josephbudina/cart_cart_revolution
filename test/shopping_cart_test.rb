require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'

class Test < Minitest::Test

  def setup
    @cart = ShoppingCart.new("King Soopers", "30items")
  end

  def test_it_exists

    assert_instance_of ShoppingCart, @cart
    assert_equal "King Soopers", @cart.name
    assert_equal 30, @cart.capacity
    assert_equal [], @cart.products 
  end
end