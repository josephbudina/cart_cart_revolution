require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'

class Test < Minitest::Test

  def setup
    @cart = ShoppingCart.new("King Soopers", "30items")
    @product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    @product2 = Product.new(:meat, 'chicken', 4.50, '2')
    @product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    @product4 = Product.new(:produce, 'apples', 0.99, '20')
  end

  def test_it_exists

    assert_instance_of ShoppingCart, @cart
    assert_equal "King Soopers", @cart.name
    assert_equal 30, @cart.capacity
    assert_equal [], @cart.products
  end

  def test_can_it_add_products

    @cart.add_product(@product1)
    @cart.add_product(@product2)
    assert_equal [@product1, @product2], @cart.products
  end

  def test_contents_of_cart
    skip
    contents = {name: "King Soopers", capacity: 30}

    assert_equal contents, @cart.details
  end

  def test_add_more_products_and_total

    @cart.add_product(@product1)
    @cart.add_product(@product2)
    @cart.add_product(@product3)
    assert_equal 13, @cart.total_number_of_products
  end
end
