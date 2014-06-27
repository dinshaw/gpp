# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  layout "gpp"

  before_filter :category_nav, :get_config

  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  # You can move this into a different controller, if you wish.  This module gives you the require_role helpers, and others.
  include RoleRequirementSystem

  # Pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_gppses'
  
  private
  
  def active_categories
    Category.find(:all)
  end

  def category_nav
    @categories = top_level_cats
    active_cats
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @top_cat_id = @category.parent ? @category.parent.id : @category.id
    end
  end

  def active_cats
    @active_cats = Category.find(:all).delete_if{|c| c.parent_id != 0 || Product.products_for_cat(c.id,nil).length < 1}.collect{|c| c.name}
  end
  
  def top_level_cats
    Category.find(:all, :conditions => "parent_id = 0", :order => "position")
  end

  def find_cart
    @cart_item = CartItem.new # for add tocart form
    if session[:cart_id] 
      begin
        @cart = Cart.find(session[:cart_id])
      rescue
        session[:cart_id] = nil
        find_cart
      end
    else 
      @cart = Cart.create 
      session[:cart_id] = @cart.id 
    end
  end 

  def redirect_to_index(msg = nil) 
    flash[:notice] = msg if msg 
    redirect_to :controller => :products, :action => :index 
  end
  
  def get_config
    @store_phone = ConfigValue.find_by_name("store_phone")
    @store_phone_800 = ConfigValue.find_by_name("store_phone_800")    
  end
end
