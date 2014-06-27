class CategoriesController < ApplicationController
  require_role "admin", :except => "show_products"
  
  # GET /categories
  # GET /categories.xml
  def index
    @all_categories = Category.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @categories.to_xml }
    end
  end

  # GET /categories/1
  # GET /categories/1.xml
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @category.to_xml }
    end
  end
end
