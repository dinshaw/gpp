class Category < ActiveRecord::Base

  attr_accessor :move
  # for name bassed url
  def to_param
    "#{id}-#{permalink}"
  end
  

  acts_as_list :scope => :parent
  acts_as_tree :order => "position"
  validates_presence_of :name
  
  has_many :products
  has_many :product_recommendations
  
  def full_name
    full_name = !parent.nil? ? parent.name + " - " + name : name
  end
end
