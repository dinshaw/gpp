class Cart < ActiveRecord::Base
  has_many :cart_items
  has_many :products, :through => :cart_items
  
  def add_product(product) 
    current_item = cart_items.find_by_product_id(product.id)
    if current_item
      current_item.increment_quantity
    else 
      current_item = CartItem.create(:product_id => product.id, :quantity => 1)
      cart_items << current_item
    end
    current_item
  end
  
  def total
    cart_items.collect{|ci| ci.price}.inject{|sum,n| sum+n}
  end
  
  def number_items
    cart_items.collect{|ci| ci.quantity}.inject{|sum,n| sum+n} || 0
  end
end
