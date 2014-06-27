class ProductsController < ApplicationController

  require_role "admin", :except => [:index,:show, :search]
  before_filter :find_cart
  
  def index
    @products = params[:category_id] ? Product.products_for_cat(params[:category_id],params[:page]) : Product.display_products(params[:page])
    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @products.to_xml }
    end
  end
  
  def search
    @products = Product.products_from_search(params[:search_term],params[:page])
    @search_term = params[:search_term]
    respond_to do |format|
      format.html {render :action => :index }
      format.xml  { render :xml => @products.to_xml }
    end
  end
  
  def show
    @cart_item = CartItem.new
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @product.to_xml }
    end
  end

end
