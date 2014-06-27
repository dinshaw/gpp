class CartItemsController < ApplicationController

  def create
    begin 
      product = Product.find(params[:cart_item][:product_id]) 
    rescue ActiveRecord::RecordNotFound 
      logger.error("Attempt to access invalid product #{params[:cart_item][:product_id]}") 
      redirect_to_index("Invalid product") 
    else 
      find_cart
      @current_item = @cart.add_product(product) 
    end
    
    redirect_to cart_url(@cart)
  end
  
  # PUT /cart_items/1
  # PUT /cart_items/1.xml
  def update
    @cart_item = CartItem.find(params[:id])

    respond_to do |format|
      if @cart_item.update_attributes(params[:cart_item])
        flash[:notice] = 'Your cart was updated successfully.'
        format.html { redirect_to cart_url }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cart_item.errors, :status => :unprocessable_entity }
      end
    end
  end


  # DELETE /cart_items/1
  # DELETE /cart_items/1.xml
  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy

    respond_to do |format|
      format.html { redirect_to(cart_url) }
      format.xml  { head :ok }
    end
  end
end
