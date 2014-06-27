# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def top_level_cats
    Category.find(:all, :conditions => "parent_id = 0")
  end
  
  def default_product_recomendations
    ProductRecommendation.find(:all,:limit => 2)
  end
end
