require_relative ('product')

class Cart

  @@products = []

  def self.all
    @@products
  end

  def self.add_product(name, base_price)
    new_product = Product.create(name, base_price)
    @@products.push(new_product)
  end

  def self.remove_product(name)
    @@products.each do |product|
      if product.name == name
        @@products.delete(product)
      end
    end
  end

  def self.total_before_tax
    total = 0
    @@products.each do |product|
      total += product.base_price
    end
    return total
  end

  def self.total_after_tax
    total = 0
    @@products.each do |product|
      total += product.total_price
    end
    return total
  end

# Add product
# delete product
# total before tax
# total after tax
# display product class variable
end

Cart.new
Cart.add_product("rice", 20)
p Product.all
# p Product.all
#
p Cart.total_before_tax
# p Cart.total_after_tax
# Cart.remove_product('apple')
#
p Cart.all
# p Product.all
