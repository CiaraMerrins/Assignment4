class facade
def initialize(number_products)
 @products= []
  number_products.times do |i|
    product = new_product("Product#{i}")
     @products << product
    end
  end