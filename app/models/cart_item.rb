class CartItem < ActiveRecord::Base
  belongs_to :order 
  belongs_to :product
  belongs_to :cart

  def increment_quantity
    update_attribute(:quantity, quantity + 1)
  end 

  def price 
    product.price * quantity 
  end 

end
