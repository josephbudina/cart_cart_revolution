class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
  instance_variables.map do |cart|
      [cart[1..-1].to_sym, instance_variable_get(cart)]
    end.to_h
  end

  def total_number_of_products

    poducts.each do |product|
     
    end
 end
end
