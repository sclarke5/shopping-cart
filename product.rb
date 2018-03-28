class Product

  @@products = []

  def initialize(name, base_price)
    @name       = name
    @base_price = base_price
    @tax_rate   = 0.20
  end

  def self.create(name, base_price)
    new_product = Product.new(name, base_price)
    @@products.push(new_product)
    return new_product
  end

  def name
    @name
  end

  def self.all
    @@products
  end

  def base_price
    @base_price
  end

  def total_price
    @base_price + (@base_price * @tax_rate)
  end
end

product1 = Product.create('banana', 2.50)
product2 = Product.create('apple', 2.00)
product3 = Product.create('yogurt', 28.00)

# puts Product.all.inspect
#
p product3.total_price
#
# p Product.all
