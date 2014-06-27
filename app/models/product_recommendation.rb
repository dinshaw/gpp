class ProductRecommendation < ActiveRecord::Base
  acts_as_list :scope => :category
  belongs_to :product
  belongs_to :category
  
end
