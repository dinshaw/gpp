class CartsController < ApplicationController
  require_role "admin", :except => ["show","destroy"]
  before_filter :except => :empty_cart

  # GET /carts/1
  # GET /carts/1.xml
  def show
    find_cart  
    if @cart.cart_items.length > 0
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @cart }
      end
    else
      redirect_to_index("Your cart is empty")
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.xml
  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    
    session[:cart] = nil 
    
    respond_to do |format|
      format.html { redirect_to(carts_url) }
      format.xml  { head :ok }
    end
  end
end