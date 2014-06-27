class ProductRecommendationsController < ApplicationController
  require_role "admin"
  
  
  # GET /product_recommendations
  # GET /product_recommendations.xml
  def index
    @product_recommendations = ProductRecommendation.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_recommendations }
    end
  end

  # GET /product_recommendations/1
  # GET /product_recommendations/1.xml
  def show

    @product_recommendation = ProductRecommendation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_recommendation }
    end
  end

  # GET /product_recommendations/new
  # GET /product_recommendations/new.xml
  def new
    @all_categories = Category.find(:all)
    @all_products = Product.find(:all)
    @product_recommendation = ProductRecommendation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_recommendation }
    end
  end

  # GET /product_recommendations/1/edit
  def edit
    @product_recommendation = ProductRecommendation.find(params[:id])
  end

  # POST /product_recommendations
  # POST /product_recommendations.xml
  def create
    @product_recommendation = ProductRecommendation.new(params[:product_recommendation])

    respond_to do |format|
      if @product_recommendation.save
        flash[:notice] = 'ProductRecommendation was successfully created.'
        format.html { redirect_to(@product_recommendation) }
        format.xml  { render :xml => @product_recommendation, :status => :created, :location => @product_recommendation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_recommendation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_recommendations/1
  # PUT /product_recommendations/1.xml
  def update
    @product_recommendation = ProductRecommendation.find(params[:id])

    respond_to do |format|
      if @product_recommendation.update_attributes(params[:product_recommendation])
        flash[:notice] = 'ProductRecommendation was successfully updated.'
        format.html { redirect_to(@product_recommendation) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_recommendation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_recommendations/1
  # DELETE /product_recommendations/1.xml
  def destroy
    @product_recommendation = ProductRecommendation.find(params[:id])
    @product_recommendation.destroy

    respond_to do |format|
      format.html { redirect_to(product_recommendations_url) }
      format.xml  { head :ok }
    end
  end
end
