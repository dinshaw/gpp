class Admin::CategoriesController < ApplicationController

  require_role "admin"

  # GET /categories
  # GET /categories.xml
  def index
    @all_categories                            = Category.find(:all, :order => "parent_id, position")

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml                => @categories.to_xml }
    end
  end

  # GET /categories/1
  # GET /categories/1.xml
  def show
    @category                                  = Category.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml                => @category.to_xml }
    end
  end

  # GET /categories/new
  def new
    @all_categories = Category.find(:all)
    @category                                  = Category.new
  end

  # GET /categories/1;edit
  def edit
    @all_categories                            = Category.find(:all)
    @category                                  = Category.find(params[:id])
  end

  # POST /categories
  # POST /categories.xml
  def create
    @category = Category.new(params[:category])
    @category.parent_id = 0 if params[:category][:parent_id].blank?
    @category.permalink                        = params[:category][:name].to_s.gsub(/[-\s]/, "_").gsub(/['"]/,"").gsub(/[\W]*/,"").downcase
    
    respond_to do |format|
      if @category.save
        flash[:notice]                         = 'Category was successfully created.'
        format.html { redirect_to admin_categories_url}
        format.xml  { head :created, :location => category_url(@category) }
      else
        format.html { render :action           => "new" }
        format.xml  { render :xml              => @category.errors.to_xml }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    @category = Category.find(params[:id])
    @category.permalink = params[:category][:name].to_s.gsub(/[-\s]/, "_").gsub(/['"]/,"").gsub(/[\W]*/,"").downcase if !params[:category][:name].blank?
    case params[:category][:move]
    when "up"
      @category.move_higher
    when "down"
      @category.move_lower
    end
    respond_to do |format|
      if @category.update_attributes(params[:category])
        flash[:notice]                         = 'Category was successfully updated.'
        format.html { redirect_to admin_categories_url}
        format.xml  { head :ok }
      else
        format.html { render :action           => "edit" }
        format.xml  { render :xml              => @category.errors.to_xml }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    @category                                  = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to admin_categories_url }
      format.xml  { head :ok }
    end
  end
end
