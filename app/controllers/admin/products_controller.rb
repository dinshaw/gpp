class Admin::ProductsController < ApplicationController
  require_role "admin", :except => "index"
  before_filter :cart_item
  
  def cart_item
    @cart_item = CartItem.new
  end
  
  # GET /products/1
  # GET /products/1.xml
  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @product.to_xml }
    end
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1;edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])
    
    respond_to do |format|
      if @product.save
        flash[:notice] = 'Product was successfully created.'
        format.html { redirect_to admin_product_url(@product) }
        format.xml  { head :created, :location => admin_product_url(@product) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors.to_xml }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        flash[:notice] = 'Product was successfully updated.'
        format.html { redirect_to admin_product_url(@product) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors.to_xml }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product = Product.find(params[:id])
    @cat = @product.category
    @product.destroy
    flash[:notice] = "Product Deleted"
    respond_to do |format|
      format.html { redirect_to category_products_path(@cat) }
      format.xml  { head :ok }
    end
  end
end
